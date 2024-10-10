import 'package:book_store/auth/login_screen.dart';
import 'package:book_store/auth/register_screen.dart';
import 'package:book_store/bottom_nav_bar/bottom_custom.dart';
import 'package:book_store/common/account_setting.dart';
import 'package:book_store/common/chat.dart';
import 'package:book_store/common/payment.dart';
import 'package:book_store/models/theme_manager.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:book_store/dialog/alert.dart';
import 'package:book_store/main.dart';
import 'package:book_store/pages/item_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'account_items/liked.dart';
import 'account_items/recently_viewed.dart';
import 'package:in_app_review/in_app_review.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  ThemeManager _themeManager = ThemeManager();
  String? _userEmail;
  @override
  void initState() {
    super.initState();
    _loadUserEmail();
  }

  Future<void> _loadUserEmail() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _userEmail = prefs.getString('email');
    });
  }

  Future<void> _logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('email');

    setState(() {
      _userEmail = null;
    });

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => BottomCustom(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    ClipOval(
                      child: Image.network(
                        'https://scontent.fhan2-5.fna.fbcdn.net/v/t1.30497-1/453178253_471506465671661_2781666950760530985_n.png?stp=dst-png_s480x480&_nc_cat=1&ccb=1-7&_nc_sid=136b72&_nc_ohc=Ys79g0KSfagQ7kNvgEuxz8M&_nc_ht=scontent.fhan2-5.fna&_nc_gid=AoqfV5zgHBX7qR3d-zEZT1m&oh=00_AYATHWxXJ5gXdb3F9k-iVrIt1Tz11WOmNqVXqJR-r_ftEw&oe=67229CFA',
                        width: 80.0,
                        height: 80.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    if (_userEmail != null)
                      Expanded(
                        child: Text(
                          _userEmail!, // Hiển thị email người dùng
                          style: const TextStyle(fontSize: 18),
                        ),
                      )
                    else
                      Row(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ),
                              );
                            },
                            child: const Center(
                              child: Text(
                                'Đăng nhập',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RegisterScreen(),
                                ),
                              );
                            },
                            child: const Center(
                              child: Text(
                                'Đăng ký',
                              ),
                            ),
                          ),
                        ],
                      ),
                    const SizedBox(
                      width: 10,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.settings,
                  size: 30,
                  color: Colors.blue,
                ),
                title: Text('Chế độ sáng / tối'),
                 trailing: Switch(
                  value: _themeManager.themeMode == ThemeMode.dark,
                  onChanged: (value) {
                    setState(() {
                      _themeManager.toggleTheme(value); 
                      print("Theme mode changed to: ${_themeManager.themeMode}"); 
                    });
                  },
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              ItemMenu(CupertinoIcons.heart, 'Đã thích', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Liked(),
                  ),
                );
              }, Colors.red),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              ItemMenu(
                CupertinoIcons.clock,
                'Đã xem gần đây',
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RecentlyViewed(),
                    ),
                  );
                },
                Colors.blue,
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              ItemMenu(Icons.help_outline, 'Trung tâm trợ giúp', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Chat(),
                  ),
                );
              }, Colors.red),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              ItemMenu(
                  CupertinoIcons.star_circle,
                  'Hài lòng với Subfi? Hãy đánh giá ngay!',
                  () => _showRatingDialog(context),
                  Colors.orangeAccent),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              ItemMenu(Icons.block_outlined, 'Yêu cầu huỷ tài khoản',
                  () => _showCancellationDialog(context), Colors.red),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              const SizedBox(
                height: 25,
              ),
              if (_userEmail != null)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: _logout,
                    child: const Center(
                      child: Text(
                        'Đăng xuất',
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

void _showCancellationDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        // backgroundColor: Colors.white,
        title: Center(
          child: Text('Xác nhận yêu cầu'),
        ),
        content: Text(
          'Chúng tôi rất lấy làm tiếc khi bạn muốn rời xa Subfi, nhưng hãy lưu ý các tài khoản đã bị xoá sẽ không thể được mở trở lại',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Hủy',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Đồng ý',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          )
        ],
      );
    },
  );
}

void _showRatingDialog(BuildContext context) {
  final InAppReview inAppReview = InAppReview.instance;
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        // backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: Center(child: Text('Đánh giá của bạn')),
        content: RatingDialog(),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Đóng',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  inAppReview.openStoreListing(appStoreId: '');
                },
                child: Text(
                  'Gửi',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          )
        ],
        // actions: [

        // ],
      );
    },
  );
}

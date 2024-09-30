import 'package:book_store/common/account_setting.dart';
import 'package:book_store/common/chat.dart';
import 'package:book_store/common/payment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'account_items/account_page/purchased_order.dart';
import 'account_items/finance.dart';
import 'account_items/help_center.dart';
import 'account_items/liked.dart';
import 'account_items/profile_account_page.dart';
import 'account_items/recently_viewed.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AccountSetting(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.settings)),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Chat(),
                        ),
                      );
                    },
                    icon: const Icon(CupertinoIcons.chat_bubble_2),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Payment(),
                        ),
                      );
                    },
                    icon: const Icon(CupertinoIcons.shopping_cart),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfileAccountPage(),
                          ),
                        );
                      },
                      child: ClipOval(
                        child: Image.network(
                          'https://scontent.fhan2-3.fna.fbcdn.net/v/t39.30808-1/349343515_792596609103521_5366526118614132792_n.jpg?stp=dst-jpg_s480x480&_nc_cat=111&ccb=1-7&_nc_sid=0ecb9b&_nc_ohc=DvjFY0EF8ZgQ7kNvgFdRI-r&_nc_ht=scontent.fhan2-3.fna&oh=00_AYDGYEcZb2TCZtkZ61oaAAgqjRmGmfkorUjzT0Vrr1NYYg&oe=67001E5B',
                          width: 80.0, // Độ rộng của ảnh
                          height: 80.0, // Chiều cao của ảnh
                          fit: BoxFit.cover, // Đảm bảo ảnh được cắt đúng cách
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Lê Hà Thành',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const Text('Người theo 0'),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 10,
                              width: 1,
                              color: Colors.grey,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Text('Đang theo dõi 0')
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PurchasedOrder(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent, // Nền trong suốt
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0), // Bo viền nếu cần
                    ),
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.square_list,
                            color: Colors.blue,
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            'Đơn mua',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Xem lịch sử đơn hàng',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                          ),
                          Icon(
                            Icons.arrow_right,
                            size: 20,
                            color: Colors.black,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor:
                                Colors.transparent, // Nền trong suốt
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(0), // Bo viền nếu cần
                            ),
                          ),
                          child: const Column(
                            children: [
                              Icon(
                                CupertinoIcons.bag,
                                color: Colors.black,
                                size: 35,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                ' Xác nhận',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor:
                                Colors.transparent, // Nền trong suốt
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(0), // Bo viền nếu cần
                            ),
                          ),
                          child: const Column(
                            children: [
                              Icon(
                                CupertinoIcons.cube_box,
                                color: Colors.black,
                                size: 35,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Lấy hàng',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor:
                                Colors.transparent, // Nền trong suốt
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(0), // Bo viền nếu cần
                            ),
                          ),
                          child: const Column(
                            children: [
                              Icon(
                                CupertinoIcons.star_circle,
                                color: Colors.black,
                                size: 35,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Đánh giá',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Liked(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.heart,
                            color: Colors.red,
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            'Đã thích',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_right,
                        size: 20,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RecentlyViewed(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent, // Nền trong suốt
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0), // Bo viền nếu cần
                    ),
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.clock,
                            color: Colors.blue,
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            'Đã xem gần đây',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_right,
                        size: 20,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Finance(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent, // Nền trong suốt
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0), // Bo viền nếu cần
                    ),
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.monetization_on,
                            color: Colors.orangeAccent,
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            'Số dư TK',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_right,
                        size: 20,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              Container(
                width: double.infinity,
                height: 8,
                color: Colors.grey.shade300,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AccountSetting(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent, // Nền trong suốt
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0), // Bo viền nếu cần
                    ),
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.person,
                            color: Colors.blueAccent,
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            'Thiết lập tài khoản',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_right,
                        size: 20,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HelpCenter(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent, // Nền trong suốt
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0), // Bo viền nếu cần
                    ),
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.help_outline,
                            color: Colors.red,
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            'Trung tâm trợ giúp',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_right,
                        size: 20,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Chat(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent, // Nền trong suốt
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0), // Bo viền nếu cần
                    ),
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.headset,
                            color: Colors.red,
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            'Trò chuyện với SUBFI',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_right,
                        size: 20,
                        color: Colors.black,
                      )
                    ],
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

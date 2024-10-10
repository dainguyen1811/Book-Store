import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat_item_pages/profile_shop_chat.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {


  TextEditingController controller = TextEditingController();
    return Scaffold(
    
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, 
          children: [
            Row(
              // Row để chứa avatar và tên
              children: [
                TextButton(
                  onPressed: () {},
                  child: ClipOval(
                    child: Image.network(
                      'https://scontent.fhan2-5.fna.fbcdn.net/v/t1.30497-1/453178253_471506465671661_2781666950760530985_n.png?stp=dst-png_s480x480&_nc_cat=1&ccb=1-7&_nc_sid=136b72&_nc_ohc=Ys79g0KSfagQ7kNvgEuxz8M&_nc_ht=scontent.fhan2-5.fna&_nc_gid=AoqfV5zgHBX7qR3d-zEZT1m&oh=00_AYATHWxXJ5gXdb3F9k-iVrIt1Tz11WOmNqVXqJR-r_ftEw&oe=67229CFA',
                      width: 50.0,
                      height: 50.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 8.0), // Khoảng cách giữa avatar và tên
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Đưa chữ sang bên trái
                  children: [
                    const Text(
                      '@subfi',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                       
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                         
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          'Đang online',
                          style: TextStyle(fontSize: 15,),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            PopupMenuButton<String>(
              color: Colors.black,
              icon: const Icon(Icons.more_horiz),
              onSelected: (value) {},
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem<String>(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProfileShopChat()));
                    },
                    child: const Row(
                      children: [
                        Icon(
                          CupertinoIcons.person_circle_fill,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Xem hồ sơ',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        )
                      ],
                    ),
                  ),
                  PopupMenuItem<String>(
                    onTap: () {},
                    child: const Row(
                      children: [
                        Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Trở về trang chủ',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        )
                      ],
                    ),
                  ),
                  PopupMenuItem<String>(
                    onTap: () {},
                    child: const Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Tìm kiếm',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        )
                      ],
                    ),
                  ),
                  PopupMenuItem<String>(
                    onTap: () {},
                    child: const Row(
                      children: [
                        Icon(
                          Icons.notifications_off,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Tắt thông báo',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        )
                      ],
                    ),
                  ),
                  PopupMenuItem<String>(
                    onTap: () {},
                    child: const Row(
                      children: [
                        Icon(
                          Icons.warning,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Tố cáo người dùng này',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        )
                      ],
                    ),
                  ),
                  PopupMenuItem<String>(
                    onTap: () {},
                    child: const Row(
                      children: [
                        Icon(
                          Icons.block,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Chặn người dùng',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        )
                      ],
                    ),
                  ),
                  PopupMenuItem<String>(
                    onTap: () {},
                    child: const Row(
                      children: [
                        Icon(
                          Icons.help,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Cần trợ giúp?',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        )
                      ],
                    ),
                  ),
                ];
              },
              offset: const Offset(0, 40),
            ),
          ],
        ),
      ),
      body: const SingleChildScrollView(),
      bottomSheet: SizedBox(
        height: 50,
        child: Row(
          children: [
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                   shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero, 
              ),
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 300,
                      );
                    });
              },
              child:const Icon(Icons.add)
            ),
           
          ],
        ),
      ),
    );
  }
}

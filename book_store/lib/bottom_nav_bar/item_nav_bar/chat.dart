import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat_item_pages/profile_page.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {


  TextEditingController controller = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, // Điều chỉnh để phân bố đều
          children: [
            Row(
              // Row để chứa avatar và tên
              children: [
                TextButton(
                  onPressed: () {},
                  child: ClipOval(
                    child: Image.network(
                      'https://scontent.fhan14-5.fna.fbcdn.net/v/t39.30808-1/458153335_831558652444180_5456226854687816504_n.jpg?stp=dst-jpg_s480x480&_nc_cat=104&ccb=1-7&_nc_sid=f4b9fd&_nc_eui2=AeFSaruV6f5oUH5MpBIGciu4-dIiOSu4xPj50iI5K7jE-PmtYJHAX32iHG1hD5d7dZrk4Ln1UrCPuNUW5m3VuLs7&_nc_ohc=GxryyXBjwtEQ7kNvgF1k0UJ&_nc_ht=scontent.fhan14-5.fna&oh=00_AYAxEt-i5NIxpoMYBXc4wlaxCw6vuAla4GYAfZOHx9511w&oe=66F7EA97',
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
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.green),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          'Đang online',
                          style: TextStyle(fontSize: 15, color: Colors.black),
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
                              builder: (context) => const ProfilePage()));
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
      body: SingleChildScrollView(),
      bottomSheet: Container(
        height: 50,
        child: Row(
          children: [
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                   shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero, 
              ),
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 300,
                      );
                    });
              },
              child:Icon(Icons.add)
            ),
           
          ],
        ),
      ),
    );
  }
}

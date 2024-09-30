import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat_item_pages/profile_shop_chat.dart';

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
                      'https://scontent.fhan2-5.fna.fbcdn.net/v/t39.30808-6/458153335_831558652444180_5456226854687816504_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=G-6Oc_n6vG8Q7kNvgFTP8DN&_nc_ht=scontent.fhan2-5.fna&_nc_gid=ABBV9a-3qU719zTZzHJ6kKt&oh=00_AYDUeeuypdSvU67s6HjmI96ZlEuSaRtSIg_cgWphrTGZiw&oe=67002FD1',
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

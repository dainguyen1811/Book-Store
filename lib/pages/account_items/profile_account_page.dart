
import 'package:flutter/material.dart';

import 'account_page/avatar_setting.dart';

class ProfileAccountPage extends StatefulWidget {
  const ProfileAccountPage({super.key});

  @override
  State<ProfileAccountPage> createState() => _ProfileAccountPageState();
}

class _ProfileAccountPageState extends State<ProfileAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('Sửa Hồ Sơ'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Hành động lưu khi nhấn nút Lưu
            },
            child: Text(
              'Lưu',
              style: TextStyle(color: Colors.blue.shade200),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff1D6CF3),
                    Color(0xff19D2FE),
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20.0),
                            ),
                          ),
                          context: context,
                          builder: (BuildContext context) {
                            return const AvatarSetting();
                          });
                    },
                    child: ClipOval(
                      child: Image.network(
                        'https://scontent.fhan2-3.fna.fbcdn.net/v/t39.30808-1/349343515_792596609103521_5366526118614132792_n.jpg?stp=dst-jpg_s480x480&_nc_cat=111&ccb=1-7&_nc_sid=0ecb9b&_nc_ohc=DvjFY0EF8ZgQ7kNvgFdRI-r&_nc_ht=scontent.fhan2-3.fna&oh=00_AYDGYEcZb2TCZtkZ61oaAAgqjRmGmfkorUjzT0Vrr1NYYg&oe=67001E5B',
                        width: 80.0,
                        height: 80.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Chạm để thay đổi',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Text(
                'Tên:',
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
              
              title: const Text('********'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Text(
                'Bio:',
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
              title: Text('Thiết lập ngay', style: TextStyle(color: Colors.grey.shade500),),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),

          
            Divider(
              color: Colors.grey.shade300, 
              thickness: 15, 
            ),
            ListTile(
              leading: const Text(
                'Giới tính:',
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
              title: const Text('Nam'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),

       
      
            const Divider(),
            ListTile(
              leading: const Text(
                'Ngày sinh:',
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
              title: const Text('**/**/****'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
         
            const Divider(),
            ListTile(
              leading: const Text(
                'Điện thoại:',
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
              title: const Text('********'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),

         
            const Divider(),
            ListTile(
              leading: const Text(
                'Email:',
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
              title: const Text('Thêm email ngay'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
        
            const Divider(),
            ListTile(
              leading: const Text(
                'Tài khoản liên kết',
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
           
          ],
        ),
      ),
    );
  }
}


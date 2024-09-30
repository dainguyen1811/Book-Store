import 'package:book_store/common/chat.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/account_items/help_center.dart';

class AccountSetting extends StatelessWidget {
  const AccountSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        title: const Text(
          'Thiết lập tài khoản',
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.blue,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Chat(),
                ),
              );
            },
            icon: const Icon(
              CupertinoIcons.chat_bubble_2,
              size: 30,
              color: Colors.blue,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Tài khoản của tôi',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                ),
              ),
              ListTile(
                leading: const Text(
                  'Tài khoản & Bảo mật',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Colors.grey.shade500,
                ),
                onTap: () {},
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              ListTile(
                leading: const Text(
                  'Địa chỉ',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Colors.grey.shade500,
                ),
                onTap: () {},
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              ListTile(
                leading: const Text(
                  'Tài khoản / Thẻ ngân hàng',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Colors.grey.shade500,
                ),
                onTap: () {},
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              const Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  'Cài đặt',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                ),
              ),
              ListTile(
                leading: const Text(
                  'Cài đặt Chat',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Colors.grey.shade500,
                ),
                onTap: () {},
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              ListTile(
                leading: const Text(
                  'Cài đặt thông báo',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Colors.grey.shade500,
                ),
                onTap: () {},
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              ListTile(
                leading: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ngôn ngữ / Language',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Tiếng Việt',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Colors.grey.shade500,
                ),
                onTap: () {},
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              const Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  'Hỗ trợ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                ),
              ),
              ListTile(
                leading: const Text(
                  'Trung tâm hỗ trợ',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Colors.grey.shade500,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HelpCenter(),
                    ),
                  );
                },
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              ListTile(
                leading: const Text(
                  'Tiêu chuẩn cộng đồng',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Colors.grey.shade500,
                ),
                onTap: () {},
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              ListTile(
                leading: const Text(
                  'Điều khoản Subfi',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Colors.grey.shade500,
                ),
                onTap: () {},
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              ListTile(
                leading: const Text(
                  'Hài lòng với Subfi? Hãy đánh giá ngay',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Colors.grey.shade500,
                ),
                onTap: () {},
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              ListTile(
                leading: const Text(
                  'Giới thiệu',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Colors.grey.shade500,
                ),
                onTap: () {},
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              ListTile(
                leading: const Text(
                  'Yêu cầu huỷ tài khoản',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Colors.grey.shade500,
                ),
                onTap: () {},
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      elevation: 5,
                      shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.zero, // Không bo tròn các góc
                      ),
                    ),
                    onPressed: () {},
                    child: const Center(
                      child: Text(
                        'Đăng xuất',
                        style: TextStyle(color: Colors.white),
                      ),
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

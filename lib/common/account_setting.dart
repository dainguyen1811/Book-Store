import 'package:book_store/common/chat.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


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
             
             
             
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
  iconTheme: const IconThemeData(
    color: Colors.white,
    size: 30
  ),
  backgroundColor: Colors.blue,
  title: Column(
    crossAxisAlignment: CrossAxisAlignment.center, 
    children: [
      const Text(
        'Dịch vụ chăm sóc khách hàng',
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
      ),
      const SizedBox(height: 10), // Khoảng cách giữa Text và TextField
      SizedBox(
        height: 40, // Chiều cao của TextField
        child: TextField(
          decoration: InputDecoration(
            hintText: "Nhập từ khoá hoặc nội dung cần tìm",
            prefixIcon: const Icon(
              Icons.search,
              size: 20,
            ),
            filled: true,
            fillColor: Colors.grey.shade200,
            contentPadding: const EdgeInsets.all(10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey.shade200,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey.shade200,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
    ],
  ),
  toolbarHeight: 100, // Tăng chiều cao AppBar để chứa cả Text và TextField
),

    );
  }
}

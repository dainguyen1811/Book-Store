import 'package:flutter/material.dart';

class RecentlyViewed extends StatelessWidget {
  const RecentlyViewed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.blue,
          size: 25
        ),
        title: const Text('Đã xem gần đây'),
      ),
    );
  }
}
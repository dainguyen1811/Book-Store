import 'package:flutter/material.dart';

class Liked extends StatelessWidget {
  const Liked({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(size: 25),
        title: const Text('Các sản phẩm đã thích'),
      ),
    );
  }
}

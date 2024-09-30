import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Finance extends StatelessWidget {
  const Finance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.blue),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Tài chính'),
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Container(
            height: 150,
            decoration: const BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text('Tổng số dư'),
                          TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text(
                                  'Lịch sử GD',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey.shade500),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.grey.shade500,
                                  size: 10,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            'đ',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 255, 111, 79),
                            ),
                          ),
                          Text(
                            NumberFormat("#,##", "en_US").format(0),
                            style: const TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 255, 111, 79),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(color: Colors.grey.shade300),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Text(
                        'Rút tiền',
                        style: TextStyle(color: Colors.black38),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

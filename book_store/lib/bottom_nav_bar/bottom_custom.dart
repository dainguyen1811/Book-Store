import 'package:book_store/page/account.dart';
import 'package:book_store/page/home_page.dart';
import 'package:book_store/library/library.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomCustom extends StatefulWidget {
  const BottomCustom({super.key});

  @override
  State<BottomCustom> createState() => _BottomCustomState();
}

class _BottomCustomState extends State<BottomCustom> {

  int selectedIndex = 0;
  late final List<Widget> page;

  @override
  void initState() {
    page = [
      const HomePage(),
      const Library(),
      const Account(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade200,
        elevation: 0,
        iconSize: 30,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: "Trang chủ"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.book), label: "Thư viện"),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.person,
              ),
              label: "Tôi"),
        ],
      ),
      body: page[selectedIndex],
    );
  }
}

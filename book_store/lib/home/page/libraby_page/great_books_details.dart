import 'package:book_store/book/book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GreatBookDetails extends StatefulWidget {
  final GreatBook grb;
  GreatBookDetails({super.key, required this.grb});

  @override
  State<GreatBookDetails> createState() => _GreatBookDetailsState();
}

class _GreatBookDetailsState extends State<GreatBookDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Quay lại",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.shopping_cart,
                  size: 30,
                ))
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: (Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 450,
                  height: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 255, 176, 176)),
                  child: Image.asset(
                    widget.grb.image,
                    scale: 1,
                  ),
                ),
                Center(
                  child: Text(
                    widget.grb.name,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    widget.grb.authorname,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'đ',
                      style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 255, 111, 79),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${NumberFormat("#,##0.000", "en_US").format(widget.grb.price)}',
                      style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 255, 111, 79),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.grey.shade300,
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mô tả sách',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.grb.description,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          
             BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble_2), label: "Chat ngay"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.shopping_cart), label: "Thêm vào giỏ hàng"),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.person,
              ),
              label: "Mua ngay"),
        ]),
       
    );
  }
}

import 'package:book_store/book/book.dart';
import 'package:flutter/material.dart';

import 'page/libraby_page/great_books_details.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  int selectedIndex = 0;
  final List<Widget> pageList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                SearchField(),
                shortItemsButton(),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 70,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Categorylist.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Column(
                       
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 8),
                            decoration: BoxDecoration(
                                color: selectedIndex == index
                                    ? Colors.black12
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.black45)),
                            child: Center(
                              child: Text(
                                Categorylist[index],
                                style: TextStyle(
                                  color: selectedIndex == index
                                      ? Colors.black
                                      : Colors.black45,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 0.8,
                ),
                itemCount: selectedIndex == 0
                    ? greatBook.length
                    : selectedIndex == 1
                        ? recommendBook.length
                        : romanceNovels.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final currentBook = selectedIndex == 0
                      ? greatBook[index]
                      : selectedIndex == 1
                          ? recommendBook[index]
                          : romanceNovels[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              GreatBookDetails(grb: currentBook),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 7,
                                offset: Offset(0, 5),
                                color: Colors.grey,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.width *
                                0.4, // Fixed height
                            child: Image.asset(
                              currentBook.image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          currentBook.name,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          currentBook.authorname,
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget SearchField() {
  return Expanded(
    child: TextField(
      decoration: InputDecoration(
        hintText: "Tìm sách, tên tác giả",
        prefixIcon: const Icon(
          Icons.search,
          size: 30,
        ),
        filled: true,
        fillColor: Colors.grey.shade200,
        contentPadding: const EdgeInsets.all(15),
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
  );
}

Widget shortItemsButton() {
  return Container(
    child: IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.menu,
        size: 30,
      ),
    ),
  );
}

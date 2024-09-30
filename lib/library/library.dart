import 'package:book_store/common/library_items/short_items_button.dart';
import 'package:book_store/models/book.dart';
import 'package:flutter/material.dart';

import '../common/library_items/search_field.dart';
import 'great_books_details.dart';

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
            const Row(
              children: [
                SearchField(),
                ShortItemsButton(),
              ],
            ),
            const SizedBox(
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
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing:0,
                  childAspectRatio: 0.6,
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
                          margin: const EdgeInsets.all(10),
                          
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
                            width: MediaQuery.of(context).size.width - 10 ,
                            height: (MediaQuery.of(context).size.width-10) *180/280,
                                 // Fixed height
                            child: Image.asset(
                              currentBook.image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          currentBook.name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          currentBook.authorname,
                          style: const TextStyle(fontSize: 14, color: Colors.grey),
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


  



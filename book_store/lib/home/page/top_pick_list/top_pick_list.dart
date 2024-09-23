import 'package:book_store/book/book.dart';
import 'package:book_store/home/page/libraby_page/great_books_details.dart';
import 'package:flutter/material.dart';

class TopPickList extends StatelessWidget {
  final listtp;
  
  const TopPickList({super.key, required this.listtp});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Bán Chạy Nhất Mọi Thời Đại', style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
          ),
        ),
      ),
      body:    Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 0.8,
                ),
                itemCount: topPicks.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final listtp = topPicks[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              GreatBookDetails(grb: topPicks[index]),
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
                              listtp.image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          listtp.name,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          listtp.authorname,
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          
    
    );
  }
}
import 'package:book_store/models/book.dart';
import 'package:book_store/library/great_books_details.dart';
import 'package:flutter/material.dart';

class TopPickList extends StatefulWidget {
  final listtp;
  
  const TopPickList({super.key, required this.listtp});

  @override
  State<TopPickList> createState() => _TopPickListState();
}

class _TopPickListState extends State<TopPickList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
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
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 0,
                  childAspectRatio: 0.5,
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
                            width: MediaQuery.of(context).size.width -10,
                            height: (MediaQuery.of(context).size.width -10) *180/280  , // Fixed height
                            child: Image.asset(
                              listtp.image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          listtp.name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          listtp.authorname,
                          style: const TextStyle(fontSize: 14, color: Colors.grey),
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
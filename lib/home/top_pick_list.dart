import 'package:book_store/models/book.dart';
import 'package:book_store/library/great_books_details.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
     
      appBar: AppBar(
      
        title: const Center(
          child: Text(
            'Bán Chạy Nhất Mọi Thời Đại', style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
             
            ),
          ),
        ),
      ),
      body:    Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 0,
                  childAspectRatio: 0.6,
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
                            
                          
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width -10,
                            height: (MediaQuery.of(context).size.width -10) *180/280  , // Fixed height
                            child: CachedNetworkImage(
                                        imageUrl: listtp.image,
                                        placeholder: (context, url) =>
                                            const CircularProgressIndicator(),
                                        errorWidget: (context, url, error) =>
                                            const Icon(Icons.error),
                                      ),
                            // child: Image.asset(
                            //   listtp.image,
                            //   fit: BoxFit.cover,
                            // ),
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
                          style: const TextStyle(fontSize: 14, ),
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
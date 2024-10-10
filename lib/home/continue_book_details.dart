import 'package:book_store/models/book.dart';
import 'package:flutter/material.dart';

class ContinueBookDetails extends StatefulWidget {
  const ContinueBookDetails({super.key, required this.continueBook});

  final ContinueBook continueBook;

  @override
  State<ContinueBookDetails> createState() => _ConinueBookDetailsState();
}

class _ConinueBookDetailsState extends State<ContinueBookDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                    const Text(
                      'Sách mới',
                      style: TextStyle(
                        
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Icon(
                      Icons.access_alarm,
                      size: 30,
                    )
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 4,
                  color: Colors.grey.shade200,
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                        ),
                        child: Image.asset(
                          widget.continueBook.image,
                          width: 250,
                          height: 350,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                widget.continueBook.name,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                widget.continueBook.authorname,
                                style: const TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.more_vert,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: 4,
                        color: Colors.grey.shade300,
                      ),
                    ],
                  ),
                ),
                Text(
                  '"Đọc sách có thể không giàu, nhưng không đọc, chắc chắn nghèo"',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16,),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 20,
                  width: double.infinity,
                  color: Colors.grey.shade300,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Gợi ý',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    
                  ),
                ),
                // SizedBox(
                //   child: ListView.separated(
                //     shrinkWrap: true,
                //       itemBuilder: (context, index) {
                //         return Row(
                //           children: [
                //             Expanded(
                //               child: Row(
                //                 children: [
                //                   Image.asset(recommendBook[index].image),
                //                 ],
                //               ),
                //             )
                //           ],
                //         );
                //       },
                //       separatorBuilder: (context, _) => const SizedBox(
                //             height: 15,
                //           ),
                //       itemCount: 3),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

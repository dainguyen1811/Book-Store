import 'package:book_store/book/book.dart';
import 'package:flutter/cupertino.dart';
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
      backgroundColor: Colors.white,
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
                        color: Colors.black,
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
                      Image.asset(
                        widget.continueBook.image,
                        width: 250,
                        height: 350,
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
                                style: const TextStyle(fontSize: 15),
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
                        color: Colors.grey.shade200,
                      ),
                    ],
                  ),
                ),
                Text(
                  '"Đọc sách có thể không giàu, nhưng không đọc, chắc chắn nghèo"',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Colors.grey.shade700),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 20,
                  width: double.infinity,
                  color: Colors.grey.shade200,
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
                    color: Colors.black,
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

import 'package:book_store/models/book.dart';
import 'package:book_store/common/chat.dart';
import 'package:book_store/common/payment.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GreatBookDetails extends StatefulWidget {
  final GreatBook grb;
  const GreatBookDetails({super.key, required this.grb});

  @override
  State<GreatBookDetails> createState() => _GreatBookDetailsState();
}

class _GreatBookDetailsState extends State<GreatBookDetails> {
  final ValueNotifier<int> total = ValueNotifier<int>(1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Quay lại",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
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
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                ),
                child: CachedNetworkImage(
                  imageUrl: widget.grb.image,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
                // child: Image.asset(
                //   widget.grb.image,
                //   fit: BoxFit.cover,

                // ),
              ),
              Center(
                child: Text(
                  widget.grb.name,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: Text(
                  widget.grb.authorname,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Row(
                children: [
                  const Text(
                    'đ',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 255, 111, 79),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    NumberFormat("#,##0.000", "en_US").format(widget.grb.price),
                    style: const TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 255, 111, 79),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 2,
                width: double.infinity,
                color: Colors.grey.shade300,
              ),
              const SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Mô tả sách',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.grb.description,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(10.0),
        height: 70, // Chiều cao cố định cho bottomNavigationBar
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Chat()),
                  );
                },
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.chat_bubble_outline,
                      // color: Colors.teal,
                      size: 25,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Chat ngay',
                      // style: TextStyle(color: Colors.teal)
                    ),
                  ],
                ),
              ),
            ),
            // Divider
            const VerticalDivider(
              color: Colors.grey,
              thickness: 1,
            ),

            Expanded(
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          padding: const EdgeInsets.all(10),
                          height: 350,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 200,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                      width: 1,
                                    )),
                                    child: Image.asset(
                                      widget.grb.image,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'đ',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Color.fromARGB(
                                                  255, 255, 111, 79),
                                            ),
                                          ),
                                          Text(
                                            NumberFormat("#,##0.000", "en_US")
                                                .format(widget.grb.price),
                                            style: const TextStyle(
                                              fontSize: 20,
                                              color: Color.fromARGB(
                                                  255, 255, 111, 79),
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 130,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(width: 1)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                if (total.value > 1) {
                                                  total.value -= 1;
                                                }
                                              },
                                              child: const Text(
                                                "-",
                                                style: TextStyle(fontSize: 30),
                                              ),
                                            ),
                                            const SizedBox(width: 10),
                                            ValueListenableBuilder<int>(
                                              valueListenable: total,
                                              builder: (context, value, child) {
                                                return Text(
                                                  "$value",
                                                  style: const TextStyle(
                                                      fontSize: 20),
                                                );
                                              },
                                            ),
                                            const SizedBox(width: 10),
                                            InkWell(
                                              onTap: () {
                                                total.value += 1;
                                              },
                                              child: const Text(
                                                "+",
                                                style: TextStyle(fontSize: 30),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              SizedBox(
                                width: double.infinity,
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  // style: ElevatedButton.styleFrom(
                                  //     backgroundColor: Colors.blue),
                                  child: const Text(
                                    'Thêm vào giỏ hàng',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                },
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_cart,
                      // color: Colors.teal,
                      size: 25,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Thêm vào Giỏ hàng',
                        style: TextStyle(
                            // color: Colors.teal,
                            fontSize: 13)),
                  ],
                ),
              ),
            ),
            // Divider
            const VerticalDivider(
              color: Colors.grey,
              thickness: 1,
            ),
            // Nút "Mua ngay"
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Payment(),
                    ),
                  );
                },
                child: const Center(
                  child: Text('Mua ngay',
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

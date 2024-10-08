import 'package:book_store/book/book.dart';
import 'package:book_store/home/page/continue_book/continue_book_details.dart';
import 'package:book_store/home/account.dart';
import 'package:book_store/home/page/libraby_page/great_books_details.dart';
import 'package:book_store/home/page/top_pick_list/top_pick_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  final List<Widget> accountPage = [
    Account(),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Trang chủ',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://scontent.fhan14-3.fna.fbcdn.net/v/t39.30808-6/349343515_792596609103521_5366526118614132792_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeHd7bS1N0MITs4oVp1Z9ETKVBWNZXh_5kRUFY1leH_mRKYsFUNmy1NvAraNlBVZ-5f82FBlvCgcB71FL30JzcBk&_nc_ohc=tRhwmzHXEJ8Q7kNvgHQthp6&_nc_ht=scontent.fhan14-3.fna&_nc_gid=AZmf8uaikKJ6qK3RAI_bY9M&oh=00_AYAAUAeageWlimgW-yWEF-zOitwZg5mztgT6ouWORRhHgA&oe=66F6FA5D'),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: Colors.blue,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Chủ đề hôm nay',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                   
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  height: 2,
                  color: Colors.grey.shade300,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Khám phá thêm",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Visibility(
                  child: SizedBox(
                    width: size.width,
                    height: 150,
                    child: ListView.builder(
                      itemCount: ctnBook.length,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final bookreadding = ctnBook[index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ContinueBookDetails(
                                    continueBook: bookreadding),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Container(
                              width: size.width,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                color: (index % 2 == 0)
                                    ? const Color.fromARGB(159, 254, 163, 117)
                                    : const Color.fromARGB(255, 0, 91, 166),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 7,
                                    offset: Offset(0, 5),
                                    color: Colors.grey,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 10),
                                      width: 150.0,
                                      height: 150.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        child: Image.asset(
                                          bookreadding.image,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          bookreadding.name,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          bookreadding.authorname,
                                          style: const TextStyle(
                                              fontSize: 15,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.more_horiz,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.grey),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bán chạy nhất',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Mọi thời đại',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Visibility(
                  child: SizedBox(
                    width: size.width,
                    height: 350,
                    child: ListView.builder(
                      itemCount: topPicks.length,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final toppicks = topPicks[index];
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
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Container(
                              width: size.width / 2,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(width: 0.5)),
                                        child: Image.asset(
                                          toppicks.image,
                                          fit: BoxFit.cover,
                                        )),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      toppicks.name,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.grey),
                ),
                SizedBox(
                  height: 5,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TopPickList(listtp: context),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Text(
                          'Xem tất cả',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        Icon(
                          Icons.arrow_right,
                          size: 30,
                          color: Colors.black,
                        )
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

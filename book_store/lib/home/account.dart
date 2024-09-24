import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.settings)),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.chat_bubble_2),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.shopping_cart),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    ClipOval(
                      child: Image.network(
                        'https://scontent.fhan14-3.fna.fbcdn.net/v/t39.30808-6/349343515_792596609103521_5366526118614132792_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeHd7bS1N0MITs4oVp1Z9ETKVBWNZXh_5kRUFY1leH_mRKYsFUNmy1NvAraNlBVZ-5f82FBlvCgcB71FL30JzcBk&_nc_ohc=tRhwmzHXEJ8Q7kNvgHQthp6&_nc_ht=scontent.fhan14-3.fna&_nc_gid=AZmf8uaikKJ6qK3RAI_bY9M&oh=00_AYAAUAeageWlimgW-yWEF-zOitwZg5mztgT6ouWORRhHgA&oe=66F6FA5D',
                        width: 80.0, // Độ rộng của ảnh
                        height: 80.0, // Chiều cao của ảnh
                        fit: BoxFit.cover, // Đảm bảo ảnh được cắt đúng cách
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Lê Hà Thành',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const Text('Người theo 0'),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 10,
                              width: 1,
                              color: Colors.grey,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Text('Đang theo dõi 0')
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent, // Nền trong suốt
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0), // Bo viền nếu cần
                    ),
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.square_list,
                            color: Colors.blue,
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            'Đơn mua',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Xem lịch sử đơn hàng',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                          ),
                          Icon(
                            Icons.arrow_right,
                            size: 20,
                            color: Colors.black,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(width: double.infinity,height: 1, color: Colors.grey.shade300,),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 100,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor:
                                Colors.transparent, // Nền trong suốt
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(0), // Bo viền nếu cần
                            ),
                          ),
                          child: Column(
                            children: [
                              Icon(
                                CupertinoIcons.bag,
                                color: Colors.black,
                                size: 30,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                ' Xác nhận',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 110,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor:
                                Colors.transparent, // Nền trong suốt
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(0), // Bo viền nếu cần
                            ),
                          ),
                          child: Column(
                            children: [
                              Icon(
                                CupertinoIcons.cube_box,
                                color: Colors.black,
                                size: 30,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Lấy hàng',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 110,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor:
                                Colors.transparent, // Nền trong suốt
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(0), // Bo viền nếu cần
                            ),
                          ),
                          child: Column(
                            children: [
                              Icon(
                                Icons.delivery_dining,
                                color: Colors.black,
                                size: 30,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Giao hàng',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 110,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor:
                                Colors.transparent, // Nền trong suốt
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(0), // Bo viền nếu cần
                            ),
                          ),
                          child: Column(
                            children: [
                              Icon(
                                CupertinoIcons.star_circle,
                                color: Colors.black,
                                size: 30,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Đánh giá',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent, // Nền trong suốt
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0), // Bo viền nếu cần
                    ),
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.heart,
                            color: Colors.red,
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            'Đã thích',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_right,
                        size: 20,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent, // Nền trong suốt
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0), // Bo viền nếu cần
                    ),
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.store,
                            color: Color.fromARGB(255, 253, 203, 85),
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            'Shop đang theo dõi',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_right,
                        size: 20,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent, // Nền trong suốt
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0), // Bo viền nếu cần
                    ),
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.clock,
                            color: Colors.blue,
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            'Đã xem gần đây',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_right,
                        size: 20,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent, // Nền trong suốt
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0), // Bo viền nếu cần
                    ),
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                           Icons.monetization_on,
                            color: Colors.orangeAccent,
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            'Số dư TK',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_right,
                        size: 20,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              Container(
                width: double.infinity,
                height: 8,
                color: Colors.grey.shade300,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent, // Nền trong suốt
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0), // Bo viền nếu cần
                    ),
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.person,
                            color: Colors.blueAccent,
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            'Thiết lập tài khoản',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_right,
                        size: 20,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent, // Nền trong suốt
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0), // Bo viền nếu cần
                    ),
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.help_outline,
                            color: Colors.red,
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            'Trung tâm trợ giúp',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_right,
                        size: 20,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey.shade300,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent, // Nền trong suốt
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0), // Bo viền nếu cần
                    ),
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.headset,
                            color: Colors.red,
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            'Trò chuyện với SUBFI',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_right,
                        size: 20,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

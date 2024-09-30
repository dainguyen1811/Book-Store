import 'package:book_store/common/payment.dart';
import 'package:flutter/material.dart';

class PurchasedOrder extends StatefulWidget {
  const PurchasedOrder({super.key});

  @override
  State<PurchasedOrder> createState() => _PurchasedOrderState();
}

class _PurchasedOrderState extends State<PurchasedOrder>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final List<String> _tabs = [
    'Chờ xác nhận',
    'Chờ lấy hàng',
    'Chờ giao hàng',
    'Đã giao',
    'Đã huỷ',
    'Trả hàng'
  ];

  final List<Widget> _pages = [
    const Center(child: Text('Chưa có đơn hàng chờ xác nhận')),
    const Center(child: Text('Chưa có đơn hàng chờ lấy hàng')),
    const Center(child: Text('Chưa có đơn hàng chờ giao hàng')),
    const Center(child: Text('Chưa có đơn hàng đã giao')),
    const Center(child: Text('Chưa có đơn hàng đã huỷ')),
    const Center(child: Text('Chưa có đơn hàng đã trả hàng')),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Đơn đã mua',
          style: TextStyle(fontSize: 25),
        )),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Payment(),
                ),
              );
            },
          ),
        ],
        bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
          tabs: _tabs.map((tab) => Tab(text: tab)).toList(),
          labelColor: Colors.black,
          labelStyle: const TextStyle(fontSize: 15),
          unselectedLabelColor: Colors.black,
          indicatorColor: Colors.blue,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _pages,
      ),
    );
  }
}

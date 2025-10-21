import 'package:flutter/material.dart';
import 'package:foodappjava/app/app_colors.dart';
import 'package:foodappjava/features/shared/presentation/widgets/back_button.dart';


import '../../widgets/ongoing_and_history_order.dart';

class OrderListScreen extends StatefulWidget {
  const OrderListScreen({super.key});
  static String name = '/order-list';

  @override
  State<OrderListScreen> createState() => _OrderListScreenState();
}

class _OrderListScreenState extends State<OrderListScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: MyBackButton(),
        title: const Text("My Orders"),
        bottom: TabBar(
          labelColor: AppColors.themeColor,
          indicatorColor: AppColors.themeColor,
          unselectedLabelColor: AppColors.themeGrey,
          controller: _tabController,
          tabs: const [
            Tab(text: "Ongoing"),
            Tab(text: "History"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          OngoingAndHistoryOrder(isHistory: false,),
          OngoingAndHistoryOrder(isHistory: true,),
        ],
      ),
    );
  }
}


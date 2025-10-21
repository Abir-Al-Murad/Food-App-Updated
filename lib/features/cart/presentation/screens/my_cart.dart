import 'package:flutter/material.dart';
import 'package:foodappjava/app/app_colors.dart';
import 'package:foodappjava/features/shared/presentation/widgets/back_button.dart';
import '../widgets/cart_item.dart';
import '../widgets/decorated_cart_item_calculate_box.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});
  static const name = '/my-cart';

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  bool _enableEdit = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.all(10),
        leading: MyBackButton(),
        title: Text("Cart"),
        actions: [
          GestureDetector(
            onTap: () {
              _enableEdit = !_enableEdit;
              setState(() {

              });
            },
            child: Text(
              _enableEdit ? "Done" : "EDIT ITEMS",
              style: TextStyle(
                color: _enableEdit ? Colors.green : AppColors.themeColor,
                decoration: TextDecoration.underline,
                decorationColor: _enableEdit
                    ? Colors.green
                    : AppColors.themeColor,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return CartItem(onEdit: _enableEdit,);
                  },
                ),
              ),
            ),
          ),
          DecoratedCartItemCalculateBox()
        ],
      ),
    );
  }
}


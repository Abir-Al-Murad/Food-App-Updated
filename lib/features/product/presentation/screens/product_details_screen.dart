import 'package:flutter/material.dart';
import 'package:foodappjava/app/app_colors.dart';
import 'package:foodappjava/features/shared/presentation/widgets/back_button.dart';
import 'package:foodappjava/features/shared/presentation/widgets/rating_fee_time.dart';
import 'package:foodappjava/features/shared/presentation/widgets/size_selector.dart';
import '../../../shared/presentation/widgets/add_to_cart_card.dart';
import '../../../shared/presentation/widgets/big_image_card.dart';
import '../../../shared/presentation/widgets/title_and_subtitle.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});
  static const String name = '/product-details';

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  List<String> sizes = ['14', '16', '18'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: MyBackButton(), title: Text("Details")),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  spacing: 25,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigImageCard(),
                    retaurantChip(),
                    TitleAndSubTitle(title: "Pizza Calzone European",subtitle: "Prosciutto e funghi is a pizza variety that is topped with tomato sauce.",),
                    RatingFeeTime(),
                    SizeSelector(sizes: sizes, onSelect: (String value) {}),
                    Text("INGRIDENTS"),
                    SizedBox(
                      height: 70,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return CircleAvatar(
                            backgroundColor: Color(0xffFFEBE4),
                            radius: 40,
                            child: Icon(
                              Icons.local_drink_outlined,
                              color: AppColors.themeColor,
                              size: 28,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          AddToCartCard(),
        ],
      ),
    );
  }

  Widget retaurantChip() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: Colors.black12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'coffe.png',
            errorBuilder: (_, __, ___) {
              return Icon(Icons.restaurant_menu_outlined, color: Colors.red);
            },
          ),
          SizedBox(width: 10),
          Text("Uttora Coffe House"),
        ],
      ),
    );
  }
}

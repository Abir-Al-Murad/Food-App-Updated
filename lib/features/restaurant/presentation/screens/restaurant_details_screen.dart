import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodappjava/app/app_colors.dart';
import 'package:foodappjava/app/assets_path.dart';
import 'package:foodappjava/features/shared/presentation/widgets/back_button.dart';
import 'package:foodappjava/features/shared/presentation/widgets/rating_fee_time.dart';
import 'package:foodappjava/features/shared/presentation/widgets/title_and_subtitle.dart';
import 'package:foodappjava/features/shared/presentation/widgets/title_row.dart';

class RestaurantDetailsScreen extends StatefulWidget {
  const RestaurantDetailsScreen({super.key});
  static const String name = '/restaurant';

  @override
  State<RestaurantDetailsScreen> createState() =>
      _RestaurantDetailsScreenState();
}

class _RestaurantDetailsScreenState extends State<RestaurantDetailsScreen> {
  List<String> food = ['Burger', 'Sandwich', 'Pizza', 'Biriyani', 'Rice'];

  late String _selectedFood = food[0];
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: MyBackButton(), title: Text("Restaurant")),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: AppColors.themeGrey,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            const SizedBox(height: 20),
            TitleAndSubTitle(
              title: "Spicy Restaurant",
              subtitle:
                  "Maecenas sed diam eget risus varius blandit sit amet non magna. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.",
            ),
            const SizedBox(height: 15),
            RatingFeeTime(),
            const SizedBox(height: 20),
            SizedBox(
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: GestureDetector(
                      onTap: () {
                        _selectedFood = food[index];
                        _currentIndex = index;
                        setState(() {});
                      },
                      child: Chip(
                        backgroundColor: _currentIndex == index
                            ? AppColors.themeColor
                            : Colors.white,
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        label: Text(
                          food[index],
                          style: TextStyle(
                            color: _currentIndex == index
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 15),
            Text("$_selectedFood(${10})", style: TextStyle(fontSize: 20)),
            const SizedBox(height: 15),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                            ),
                          ]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Burger Ferguson",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            Text("Spicy Restaurant",style: TextStyle(fontSize: 13,color: AppColors.themeGrey),),
                            Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: [
                                Text("\$40"),
                                SvgPicture.asset(AssetsPath.addIcon),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

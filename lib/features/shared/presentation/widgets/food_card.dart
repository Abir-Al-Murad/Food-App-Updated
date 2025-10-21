import 'package:flutter/material.dart';
import 'package:foodappjava/features/restaurant/presentation/screens/restaurant_details_screen.dart';
import 'package:foodappjava/features/shared/presentation/widgets/rating_fee_time.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.rating,
    required this.deliveryFee,
    required this.duration,
  });

  final String title;
  final String subTitle;
  final String rating;
  final String deliveryFee;
  final String duration;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, RestaurantDetailsScreen.name);
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.maxFinite,
              height: 200,
              decoration: BoxDecoration(
                color: Color(0xff98A8B8),
                borderRadius: BorderRadius.circular(15),
              ),
              child: ClipRRect(),
            ),
            const SizedBox(height: 5),
            Text(
              title,
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 5),
            Text(
              subTitle,
              style: TextStyle(
                fontSize: 14,
                color: Color(0xffA0A5BA),
              ),
            ),
            const SizedBox(height: 8),
            RatingFeeTime(),

          ],
        ),
      ),
    );
  }
}


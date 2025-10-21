import 'package:flutter/material.dart';
import 'package:foodappjava/app/app_colors.dart';

class DoubleContainerGridView extends StatelessWidget {
  const DoubleContainerGridView({
    super.key,
    required this.title,
    required this.restaurantName,
    this.price,
    required this.imageUrl,
  });

  final String title;
  final String restaurantName;
  final int? price;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 6,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height:140,
              width: 200,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10
                    )
                  ]

              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                  Text(restaurantName,style: TextStyle(color: Color(0xff646982),fontSize: 13),),
                  SizedBox(height: 15,),
                ],
              ),
            ),

            Positioned(
              top: -50,
              left: (200-165)/2,
              child: Container(
                height: 100,
                width: 165,
                decoration: BoxDecoration(
                  color: AppColors.themeGrey,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

          ],
        );
      },
    );
  }
}

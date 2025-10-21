import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodappjava/features/product/presentation/screens/product_details_screen.dart';

import '../../../app/app_colors.dart';
import '../../../app/assets_path.dart';

class StackContainerWithPrice extends StatelessWidget {
  const StackContainerWithPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, ProductDetailsScreen.name);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding:EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 6)
                  ),
                ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
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
          ),
          Positioned(
            left:20,
            right:20,
            top:-50,
            child: Container(
              height:150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                // color: AppColors.themeGrey,
              ),
              child: Image.asset(AssetsPath.burgerPNG,fit: BoxFit.scaleDown,),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodappjava/features/cart/presentation/screens/my_cart.dart';

import '../../../../app/app_colors.dart';
import '../../../../app/assets_path.dart';

class CartLogo extends StatelessWidget {
  const CartLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, MyCart.name);
          },
          child: Stack(clipBehavior: Clip.none,
              children:[
                CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.black,
                  child: SvgPicture.asset(AssetsPath.cartLogo),
                ),
                Positioned(
                  top: -7,
                  right: 0,
                  child: CircleAvatar(
                    radius: 13,
                    backgroundColor: AppColors.themeColor,
                    child: Text('2',style: TextStyle(color: Colors.white),),
                  ),
                )
              ]
          ),
        )
    );
  }
}

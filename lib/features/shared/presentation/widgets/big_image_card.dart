import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class BigImageCard extends StatelessWidget {
  const BigImageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
        children:[
          Container(
            height: 250,
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: AppColors.themeGrey,
                borderRadius: BorderRadius.circular(25)
            ),
            // child: Image.network("",errorBuilder: (_,__,___,){
            //   return
            // },
          ),
          Positioned(
            right: 15,
            bottom: 15,
            child: CircleAvatar(
              backgroundColor: Colors.white38,
              radius: 25,
              child: Icon(Icons.favorite_outline,color: Colors.white,),
            ),
          )
        ]
    );
  }
}

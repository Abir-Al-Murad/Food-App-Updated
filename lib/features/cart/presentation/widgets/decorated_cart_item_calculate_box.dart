import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';
import '../../../shared/presentation/widgets/decorated_filled_button.dart';
import '../../../shared/presentation/widgets/search_field.dart';

class DecoratedCartItemCalculateBox extends StatelessWidget {
  const DecoratedCartItemCalculateBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      height: 320,
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                color: AppColors.themeGrey,
                blurRadius: 10,
                spreadRadius: 1

            )
          ]
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("DELIVERY ADDRESS"),
              Text("EDIT",style: TextStyle(color: AppColors.themeColor,decoration: TextDecoration.underline,decorationColor: AppColors.themeColor),)
            ],
          ),
          SizedBox(height: 10,),
          SearchField(hintText: '2118 Thornridge Cir. Syracuse'),
          Row(
            children: [
              Text("Total: ",style: TextStyle(color: AppColors.themeGrey,fontSize: 16),),
              SizedBox(width: 5,),
              Text("\$96",style: TextStyle(fontSize: 30),),
              Spacer(),
              Container(
                child: Row(
                  children: [
                    Text("Breakdown",style: TextStyle(color: AppColors.themeColor,fontSize: 16),),
                    Icon(Icons.arrow_forward_ios,size: 20,),
                  ],
                ),
              ),
            ],
          ),
          DecoratedFilledButton(title: "PLACE ORDER",onTap: (){},),

        ],
      ),
    );
  }
}

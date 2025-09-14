import 'package:flutter/material.dart';
import 'package:foodappjava/app/app_colors.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.themeLightGrey,
            shape: BoxShape.circle,
          ),
          child: Center(child: Icon(Icons.arrow_back_ios,size: 20,)),
        ),
      ),
    );
  }
}

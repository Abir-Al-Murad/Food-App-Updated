import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class DecoratedFilledButton extends StatelessWidget {
  const DecoratedFilledButton({
    super.key, required this.title, required this.onTap,
  });
  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return FilledButton(onPressed: (){
      onTap();
    }, child: Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),style: FilledButton.styleFrom(
        backgroundColor: AppColors.themeColor,shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
    ),
        minimumSize: Size(double.maxFinite, 80)
    ),);
  }
}

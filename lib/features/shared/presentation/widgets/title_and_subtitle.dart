import 'package:flutter/material.dart';

class TitleAndSubTitle extends StatelessWidget {
  const TitleAndSubTitle({
    super.key, required this.title, required this.subtitle,
  });
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        const SizedBox(height: 10,),
        Text(subtitle,style: TextStyle(fontSize: 14,color: Colors.grey),),
      ],
    );
  }
}

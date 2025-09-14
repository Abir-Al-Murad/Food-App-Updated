import 'package:flutter/material.dart';

class titleRow extends StatelessWidget {
  const titleRow({super.key, required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
        Container(
          child: Row(
            children: [
              Text("See All ", style: TextStyle(fontSize: 15)),
              Icon(Icons.arrow_forward_ios_rounded, size: 20),
            ],
          ),
        ),
      ],
    );
  }
}
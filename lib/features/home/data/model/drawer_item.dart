import 'package:flutter/material.dart';

class DrawerItem{
  final String title;
  final String imageInfo;
  final VoidCallback onTap;
  String? subtitle;

  DrawerItem({required this.title, required this.imageInfo, required this.onTap,this.subtitle});
}
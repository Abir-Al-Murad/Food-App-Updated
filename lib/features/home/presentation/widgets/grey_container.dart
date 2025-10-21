import 'package:flutter/material.dart';
import 'package:foodappjava/app/app_colors.dart';
import 'package:foodappjava/features/home/presentation/widgets/decorated_list_tile.dart';

import '../../data/model/drawer_item.dart';

class GreyContainer extends StatelessWidget {
  final List<DrawerItem> items;

  const GreyContainer({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        // color: Colors.grey.shade400,
        color: AppColors.themeGreyContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: items.map((item) {
          return DecoratedListTile(drawerItem: item);
        }).toList(),
      ),
    );
  }
}

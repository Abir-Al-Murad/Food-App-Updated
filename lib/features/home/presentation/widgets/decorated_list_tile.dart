import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodappjava/features/home/data/model/drawer_item.dart';

class DecoratedListTile extends StatelessWidget {
  const DecoratedListTile({
    super.key, required this.drawerItem
  });

  final DrawerItem drawerItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.white,
        child: SvgPicture.asset(drawerItem.imageInfo),
      ),
      title: Text(drawerItem.title),
      subtitle: drawerItem.subtitle != null ? Text(drawerItem.subtitle!) : null,
      trailing: drawerItem.subtitle == null ? Icon(Icons.arrow_forward_ios,size: 18,):null,
      onTap: drawerItem.onTap,
    );
  }
}

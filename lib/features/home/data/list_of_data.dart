import 'package:flutter/cupertino.dart';
import 'package:foodappjava/app/app.dart';
import 'package:foodappjava/features/address/presentation/screens/address.dart';
import 'package:foodappjava/features/cart/presentation/screens/my_cart.dart';
import 'package:foodappjava/features/personal/presentation/screens/personal_info_screen.dart';

import '../../../app/assets_path.dart';
import 'model/drawer_item.dart';

class ListOfData{
    List<String> category = ['All', 'Hot Dog', 'Burger','Pizza','Coffee'];
    List<String> officies = ['Halal Lab Office', 'Haram Lab Office'];
    String selectedOffice = 'Halal Lab Office';
    final List<DrawerItem> drawerItems = [
      DrawerItem(
        title: "Personal Info",
        imageInfo: AssetsPath.personLogo,
        onTap: () {
          Navigator.pushNamed(
            FoodApp.navigatorKey.currentState!.context,
            PersonalInfoScreen.name,
          );
        },
      ),
      DrawerItem(
        title: "Address",
        imageInfo: AssetsPath.addressLogo,
        onTap: () {
          Navigator.pushNamed(FoodApp.navigatorKey.currentState!.context, Address.name);
          print("Tapped Settings");
        },
      ),

    ];
    final List<DrawerItem> drawerItems2 = [
      DrawerItem(
        title: "Cart",
        imageInfo: AssetsPath.blueCartLogo,
        onTap: () {
          Navigator.pushNamed(FoodApp.navigatorKey.currentState!.context, MyCart.name);
        },
      ),
      DrawerItem(
        title: "Favorites",
        imageInfo: AssetsPath.purpleHeartLogo,
        onTap: () {
          print("Tapped Favorites");
        },
      ),
      DrawerItem(
        title: "Notification",
        imageInfo: AssetsPath.notificationLogo,
        onTap: () {
          print("Tapped Notification");
        },
      ),
      DrawerItem(
        title: "Payment Method",
        imageInfo: AssetsPath.paymentLogo,
        onTap: () {
          print("Tapped Payment Method");
        },
      ),



    ];
    final List<DrawerItem> drawerItem3 = [
      DrawerItem(title: "FAQs", imageInfo: AssetsPath.faqsLogo, onTap: () {}),
      DrawerItem(title: "User Reviews", imageInfo: AssetsPath.userReviewLogo, onTap: () {}),
      DrawerItem(title: "Settings", imageInfo: AssetsPath.settingsLogo, onTap: () {}),
    ];
    final List<DrawerItem> drawerItem4 = [
      DrawerItem(title: 'Log Out', imageInfo: AssetsPath.logOutLogo, onTap: (){})
    ];
}

import 'package:flutter/material.dart';
import 'package:foodappjava/features/address/presentation/screens/address.dart';
import 'package:foodappjava/features/auth/presentation/screens/splash_screen.dart';
import 'package:foodappjava/features/cart/presentation/screens/my_cart.dart';
import 'package:foodappjava/features/home/presentation/screens/home_screen_v1.dart';
import 'package:foodappjava/features/order/presentation/screens/order_list_screen.dart';
import 'package:foodappjava/features/personal/presentation/screens/personal_info_screen.dart';
import 'package:foodappjava/features/product/presentation/screens/product_details_screen.dart';
import 'package:foodappjava/features/restaurant/presentation/screens/restaurant_details_screen.dart';
import 'package:foodappjava/features/search/presentation/screens/search_result_screen.dart';
import 'package:foodappjava/features/search/presentation/screens/search_screen.dart';

import '../features/order/presentation/screens/order_tracking_screen.dart';

MaterialPageRoute onGenerateRoute(RouteSettings settings){
  late Widget screen;
  if(settings.name == HomeScreenV1.name){
    screen = HomeScreenV1();
  }else if(settings.name == SearchScreen.name){
    screen = SearchScreen();
  }else if(settings.name == SearchResultScreen.name){
    final arg = settings.arguments as String;
    screen = SearchResultScreen(keyword: arg??'',);
  }else if(settings.name == ProductDetailsScreen.name){
    screen = ProductDetailsScreen();
  }else if(settings.name == MyCart.name){
    screen = MyCart();
  }else if(settings.name == SplashScreen.name){
    screen = SplashScreen();
  }else if(settings.name == PersonalInfoScreen.name){
    screen = PersonalInfoScreen();
  } else if(settings.name == Address.name){
    screen = Address();
  } else if(settings.name == RestaurantDetailsScreen.name){
    screen = RestaurantDetailsScreen();
  }else if(settings.name == OrderTrackingScreen.name){
    screen = OrderTrackingScreen();
  }else if(settings.name == OrderListScreen.name){
    screen = OrderListScreen();
  }

  return MaterialPageRoute(builder: (ctx)=>screen);
}
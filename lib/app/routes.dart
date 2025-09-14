

import 'package:flutter/material.dart';
import 'package:foodappjava/features/home/presentation/screens/home_screen_v1.dart';
import 'package:foodappjava/features/home/presentation/screens/search_screen.dart';

MaterialPageRoute onGenerateRoute(RouteSettings settings){
  late Widget screen;
  if(settings.name == HomeScreenV1.name){
    screen = HomeScreenV1();
  }else if(settings.name == SearchScreen.name){
    screen = SearchScreen();
  }

  return MaterialPageRoute(builder: (ctx)=>screen);
}
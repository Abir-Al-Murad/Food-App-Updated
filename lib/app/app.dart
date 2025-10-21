import 'package:flutter/material.dart';
import 'package:foodappjava/app/routes.dart';
import 'package:foodappjava/features/auth/presentation/screens/splash_screen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodApp extends StatefulWidget {
  const FoodApp({super.key});
  static late GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  @override
  State<FoodApp> createState() => _FoodAppState();
}

class _FoodAppState extends State<FoodApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: FoodApp.navigatorKey,
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          leadingWidth: 90,
          titleSpacing: 0,
          toolbarHeight: 80,
        ),
        textTheme: GoogleFonts.senTextTheme(
          Theme.of(context).textTheme,
        ).copyWith(
          titleLarge: GoogleFonts.sen(
            fontSize: 20,
          )
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SplashScreen(),
      initialRoute: SplashScreen.name,
      onGenerateRoute: onGenerateRoute,
    );
  }
}

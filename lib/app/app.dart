import 'package:flutter/material.dart';
import 'package:foodappjava/app/routes.dart';
import 'package:foodappjava/features/home/presentation/screens/home_screen_v1.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.white
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
      home: HomeScreenV1(),
      initialRoute: HomeScreenV1.name,
      onGenerateRoute: onGenerateRoute,
    );
  }
}

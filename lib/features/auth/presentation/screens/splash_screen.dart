import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Stack(
        children: [
          SvgPicture.asset('assets/images/Splash_Page_02.svg'),
          Center(
            child: SvgPicture.asset('assets/images/food_logo.svg'),
          )
        ],
      )),
    );
  }
}

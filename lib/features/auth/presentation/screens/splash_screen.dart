import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodappjava/features/home/presentation/screens/home_screen_v1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const name = '/splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Future<void> moveToNext()async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushNamed(context, HomeScreenV1.name);
  }

  @override
  void initState() {
    moveToNext();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Stack(
        children: [
          SvgPicture.asset('assets/images/Splash_Page_02.svg',height: double.maxFinite,width: double.maxFinite,),
          Center(
            child: SvgPicture.asset('assets/images/food_logo.svg',width: 150,),
          ),
        ],
      )),
    );
  }
}

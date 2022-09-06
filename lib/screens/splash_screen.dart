import 'package:flutter/material.dart';
import 'package:flutter_template/constants/app_colors.dart';
import 'package:flutter_template/screens/list_demo.dart';
import 'package:flutter_template/screens/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnBoarding()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splash_color,
      body:
          Center(child: Image(image: AssetImage('assets/images/app_logo.png'))),
    );
  }
}

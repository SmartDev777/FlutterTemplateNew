import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingSlider(
        headerBackgroundColor: Colors.transparent,
        // finishButtonText: 'Register',
        // skipTextButton: Text('Skip'),
        // trailing: Text('Login'),
        finishButtonColor: Colors.transparent,
        skipTextButton: Container(
          color: Colors.transparent,
        ),
        background: [
          Image.asset('assets/images/app_logo.png'),
          Image.asset('assets/images/app_logo.png'),
          Image.asset('assets/images/app_logo.png'),
        ],
        totalPage: 3,
        speed: 1.8,
        pageBodies: [
          Text("Page 1"),
          Text("Page 2"),
          Text("Page 3"),
        ],
      ),
    );
  }
}

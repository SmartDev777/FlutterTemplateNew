import 'package:flutter/material.dart';
import 'package:flutter_template/demo_screen.dart';
import 'package:flutter_template/screens/list_demo.dart';
import 'package:flutter_template/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

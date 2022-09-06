import 'package:flutter/material.dart';

class HomeScree extends StatelessWidget {
  const HomeScree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Hello pakistan",
        style: TextStyle(fontFamily: 'Poppins'),
      )),
    );
  }
}

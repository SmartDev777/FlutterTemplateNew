import 'package:flutter/material.dart';
import 'package:flutter_template/constants/app_colors.dart';

import '../constants/app_constant.dart';
import '../widgets/widget.dart';

class AppComponents extends StatelessWidget {
  const AppComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter UI"),
      ),
      body: Column(
        children: [
          offerCard(),
        ],
      ),
    );
  }
}

offerCard() {
  Card(
    color: primary_color,
    child: ListTile(
      contentPadding: EdgeInsets.all(20),
      leading: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            '',
            fit: BoxFit.fitWidth,
            height: 60,
            width: 60,
          ),
          Image.asset(
            '',
            fit: BoxFit.fitWidth,
          ),
        ],
      ),
      title: Text(
        "Mobile Recharge Offer",
        style: TextStyle(
            color: primary_textcolor,
            fontSize: 16,
            fontFamily: app_font,
            fontWeight: FontWeight.w500),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appTextStyle('Use Code First20'),
            VerticalSpace(height: 5),
            appTextStyle(
              "Get 20 % Instant cashback upto Rs 50 on your firs mobile recharge. T&C apply",
            ),
          ],
        ),
      ),
    ),
  );
}

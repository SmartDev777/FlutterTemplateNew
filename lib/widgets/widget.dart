import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/app_colors.dart';
import '../constants/app_constant.dart';
import '../utils/form_validator.dart';

getEmailTextField(controller, hint) {
  return TextFormField(
    controller: controller,
    validator: (val) {
      return FormValidator.validateEmail(val);
    },
    maxLength: 50,
    inputFormatters: [
      LengthLimitingTextInputFormatter(50),
      FilteringTextInputFormatter.allow(RegExp("[a-zA-Z0-9-_.@]")),
    ],
    textInputAction: TextInputAction.next,
    decoration: txtInputDecoration(hint),
    keyboardType: TextInputType.emailAddress,
  );
}

getPasswordTextField(controller, hint) {
  return TextFormField(
    controller: controller,
    validator: (val) {
      return FormValidator.validatePassword(val);
    },
    textInputAction: TextInputAction.next,
    decoration: txtInputDecoration(hint),
    keyboardType: TextInputType.text,
    obscureText: true,
  );
}

appTextField(hint, icon, controller) {
  return TextField(
    controller: controller,
    textAlign: TextAlign.center,
    decoration: InputDecoration(
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(24.0),
        ),
        filled: true,
        hintStyle: TextStyle(
            color: Color(0xff919191), fontFamily: app_font, fontSize: 16),
        hintText: hint,
        fillColor: textfiled_bg),
  );
}

appBorderTextField(hint, icon) {
  return TextField(
    textAlign: TextAlign.start,
    decoration: InputDecoration(
        prefixIcon: Icon(icon),
        suffixIcon: Icon(Icons.close),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12.0),
        ),
        filled: true,
        hintStyle: TextStyle(
            color: secondary_textcolor, fontFamily: app_font, fontSize: 16),
        hintText: hint,
        fillColor: textfiled_bg),
  );
}

getNumberTextField(controller, hint) {
  return TextFormField(
    controller: controller,
    validator: (val) {
      return FormValidator.validateEmail(val);
    },
    textInputAction: TextInputAction.next,
    decoration: txtInputDecoration(hint),
    maxLength: 11,
    keyboardType: TextInputType.number,
    inputFormatters: [
      FilteringTextInputFormatter.digitsOnly,
    ],
  );
}

txtInputDecoration(hint) {
  return InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(color: Colors.amber),
      enabledBorder: UnderlineInputBorder(
          // borderRadius: BorderRadius.circular(40)
          ));
}

appTextStyle(text) {
  return Text(
    text,
    style: TextStyle(
        fontSize: 16,
        fontFamily: app_font,
        fontWeight: FontWeight.bold,
        color: primary_textcolor),
  );
}

appSecondaryText(text) {
  return Text(
    text,
    style: TextStyle(
        fontFamily: app_font, fontSize: 14, color: secondary_textcolor),
  );
}

appRoudedButton(btntext, onTap) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
      onPressed: onTap,
      child: Text(btntext));
}

appRoundedContainer() {
  return BoxDecoration(
      borderRadius: BorderRadius.circular(10), color: Colors.black12);
}

showMessage(context, text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
}

pushNewScreen(context, screen) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => screen),
  );
}

replaceNewScreen(context, screen) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => screen),
  );
}

appOutlineCircleImage(String imagePath, {double radius = 20.0}) {
  return CircleAvatar(
    radius: radius,
    backgroundColor: primary_color,
    child: CircleAvatar(
      radius: radius - 2,
      backgroundImage: AssetImage('${images_path}$imagePath'),
    ),
  );
}

appCircleImage(String imagePath, {double radius = 20.0}) {
  return CircleAvatar(
    radius: radius,
    backgroundImage: AssetImage('${images_path}$imagePath'),
  );
}

showAlertDialog(BuildContext context, index) {
  // set up the button
  Widget addBtn = TextButton(
    child: Text("Add"),
    onPressed: () {
      // addNote();
    },
  );

  Widget updateBtn = TextButton(
    child: Text("Update"),
    onPressed: () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: TextField(
      // controller: txtNoteContrl,
      decoration: InputDecoration(label: Text("Enter Note")),
    ),
    // content: Text(""),
    actions: [addBtn, updateBtn],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

titleTextStyle(text) {
  return Text(
    text,
    style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: primary_textcolor,
        fontFamily: app_font),
  );
}

VerticalSpace({double height = 20}) {
  return SizedBox(
    height: height,
  );
}

HorizontalSpace({double w = 20}) {
  return SizedBox(
    width: w,
  );
}

roudedBox({Color color = primary_textcolor}) {
  return BoxDecoration(borderRadius: BorderRadius.circular(10), color: color);
}

gradientBoxDecoration() {
  return BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
        Colors.blueGrey,
        Colors.white,
      ]));
}

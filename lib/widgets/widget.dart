import 'package:app_template/utils/form_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.black),
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

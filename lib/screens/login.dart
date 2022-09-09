import 'package:app_template/screens/forget_password.dart';
import 'package:app_template/utils/dimens.dart';
import 'package:app_template/utils/strings.dart';
import 'package:app_template/widgets/widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailCtlr = new TextEditingController();
  TextEditingController PwdCtlr = new TextEditingController();

  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(

            margin: appHorizontalSpace(),
            padding: appHorizontalSpace(),
            decoration: appRoundedContainer(),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  getEmailTextField(
                    emailCtlr,
                    hint_email,
                  ),
                  getPasswordTextField(
                    PwdCtlr,
                    hint_pwd,
                  ),
                  addVerticalSpace(),
                  GestureDetector(
                    onTap: () {
                      pushNewScreen(context,const ForgetPasswordScreen());
                    },
                    child: Container(
                        alignment: Alignment.centerRight,
                        child: appTextStyle(text_forget_password)),
                  ),
                  addVerticalSpace(),
                  SizedBox(
                    width: appScreenWidth(context),
                    child: appRoudedButton(btn_login, () {
                      // Validate returns true if the form is valid, or false otherwise.
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        showMessage(
                            context, "Login Success with ${emailCtlr.text}");
                      }
                    }),
                  ),
                ],
              ),
            ),
          ),
        appTextStyle("Don't have account ? Sign Up")
        ],
      ),
    );
  }
}

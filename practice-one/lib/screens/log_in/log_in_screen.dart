import 'package:Flutter_Application_1/components/default_buttons.dart';
import 'package:Flutter_Application_1/screens/home/home_screen.dart';
import 'package:Flutter_Application_1/screens/log_in/components/form.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'components/top_icon.dart';
import 'components/welcome_text.dart';

class LogInScreen extends StatelessWidget {
  static String routeName = "/log_in";

  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            LoginScreenTopIcon(),
            WelcomeText(),
            LoginForm(),
            Container(
              padding: EdgeInsets.only(top: 57),
              alignment: Alignment.center,
              child: DefaultButton(
                  text: "Log in",
                  press: () {
                    Navigator.pushReplacementNamed(
                        context, HomeScreen.routeName);
                  },
                  width: 315,
                  height: 50,
                  textFontFamily: 'Nunito Sans',
                  textSize: 18,
                  textWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}

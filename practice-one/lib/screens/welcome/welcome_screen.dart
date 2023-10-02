import 'package:Flutter_Application_1/components/default_buttons.dart';
import 'package:Flutter_Application_1/screens/log_in/log_in_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static String routeName = "/welcome";

  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image(
          image: AssetImage("assets/images/logo-splash.png"),
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        Container(
          padding: EdgeInsets.only(
            left: 30,
            top: 231,
          ),
          child: Text(
            "MAKE YOUR",
            style: TextStyle(
              fontSize: 24,
              color: Color(0xFF5F5F5F),
              fontFamily: 'Gelasio',
              fontWeight: FontWeight.w600,
              letterSpacing: 1.20,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            left: 30,
            top: 276,
          ),
          child: Text(
            "HOME BEAUTIFUL",
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'Gelasio',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            left: 59,
            right: 30,
            top: 349,
          ),
          child: Text(
            "The best simple place where you " +
                "discover most wonderful furnitures " +
                "and make your home beautiful",
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFF808080),
              fontFamily: 'Nunito Sans',
              fontWeight: FontWeight.w400,
              height: 1.98,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            top: 608,
          ),
          alignment: Alignment.center,
          child: DefaultButton(
            press: () {
              Navigator.pushReplacementNamed(context, LogInScreen.routeName);
            },
            text: 'Get Started',
            height: 54,
            width: 159,
            textFontFamily: 'Gelasio',
            textSize: 18,
            textWeight: FontWeight.w600,
          ),
        )
      ],
    ));
  }
}

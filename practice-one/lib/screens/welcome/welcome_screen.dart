import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
    static String routeName = "/welcome";

  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('Splash Screen'),
      )
    );
  }
}
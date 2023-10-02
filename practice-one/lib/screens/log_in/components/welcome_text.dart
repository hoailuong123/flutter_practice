import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(
        left: 30,
        top: 30.17,
      ),
      child: Column(
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Hello !\n',
                  style: TextStyle(
                    color: Color(0xFF909090),
                    fontSize: 30,
                    fontFamily: 'Merriweather',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: 'WELCOME BACK',
                  style: TextStyle(
                    color: Color(0xFF303030),
                    fontSize: 24,
                    fontFamily: 'Merriweather',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

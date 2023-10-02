import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Make home\n',
                          style: TextStyle(
                            color: Color(0xFF909090),
                            fontSize: 18,
                            fontFamily: 'Gelasio',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'BEAUTIFUL',
                          style: TextStyle(
                            color: Color(0xFF232323),
                            fontSize: 18,
                            fontFamily: 'Gelasio',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
                alignment: Alignment.topRight,
                padding: EdgeInsets.only(
                  right: 20,
                  top: 12,
                ),
                child: Image(
                  image: AssetImage("assets/icons/bi_cart2.png"),
                  width: 24,
                  height: 24,
                ))
          ],
        ),
      ),
    );
  }
}

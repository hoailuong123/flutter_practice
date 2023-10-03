import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 24,
          ),
          Text.rich(
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
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: 24,
            child: GestureDetector(
              child: Image.asset(
                "assets/icons/bi_cart2.png",
              ),
              onTap: () {
                print("Tab");
              },
            ),
          ),
        ],
      ),
    );
  }
}

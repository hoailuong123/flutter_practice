import 'package:flutter/material.dart';

class LoginScreenTopIcon extends StatelessWidget {
  const LoginScreenTopIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        LineDrawed(),
        Image(
          image: AssetImage("assets/icons/app_icon.png"),
        ),
        LineDrawed(),
      ],
    );
  }
}

class LineDrawed extends StatelessWidget {
  const LineDrawed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105,
      height: 1,
      decoration: ShapeDecoration(
        color: Color(0xFFBDBDBD),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
      ),
    );
  }
}

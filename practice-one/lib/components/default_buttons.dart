import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.text,
    required this.press,
    required this.width,
    required this.height,
    this.textFontFamily,
    this.textSize,
    this.textWeight,
  });
  final String text;
  final VoidCallback press;
  final double width;
  final double height;
  final String? textFontFamily;
  final double? textSize;
  final FontWeight? textWeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.black,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: textSize,
            fontWeight: textWeight,
            color: Colors.white,
            fontFamily: textFontFamily,
          ),
        ),
      ),
    );
  }
}

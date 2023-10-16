import 'package:Flutter_Application_1/components/default_buttons.dart';
import 'package:Flutter_Application_1/components/icon_btn_with_counter.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  static String routeName = "/product";

  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: Container(
                    width: 332,
                    height: 455,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(60)),
                    ),
                    child: Image(
                      image: AssetImage("assets/images/detail.png"),
                      fit: BoxFit.cover,
                      alignment: Alignment.bottomRight,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                top: 25,
              ),
              child: Text(
                'Minimal Stand',
                style: TextStyle(
                  color: Color(0xFF303030),
                  fontSize: 24,
                  fontFamily: 'Gelasio',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                top: 10,
                right: 25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$ 50',
                    style: TextStyle(
                      color: Color(0xFF303030),
                      fontSize: 30,
                      fontFamily: 'Nunito Sans',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  Container(
                    width: 113,
                    height: 30,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                top: 16,
              ),
              child: SizedBox(
                width: 325,
                child: Text(
                  'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home. ',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Color(0xFF5F5F5F),
                    fontSize: 14,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w300,
                    height: 0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 55.0,
                bottom: 25.0,
              ),
              child: Center(
                child: DefaultButton(
                    text: "Add to cart", press: () {}, width: 250, height: 60),
              ),
            )
          ],
        ),
      ),
    );
  }
}

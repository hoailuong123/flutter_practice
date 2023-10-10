import 'package:Flutter_Application_1/screens/home/components/categories.dart';
import 'package:flutter/material.dart';
import 'components/top_bar.dart';
import 'package:Flutter_Application_1/main.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopBar(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CategoryList(),
              ),
              GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                shrinkWrap: true,
                mainAxisSpacing: 10,
                crossAxisSpacing: 5.0,
                children: [
                  for (int i = 1; i <= 4; i++)
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.5),
                                  spreadRadius: 1,
                                )
                              ]),
                          child: Image.asset(
                            "assets/images/$i.png",
                            width: 157,
                            height: 200,
                          )

                          // child: Column(children: [
                          //   InkWell(
                          //     onTap: () {},
                          //     child: Container(
                          //       padding: EdgeInsets.all(10),
                          //       child: Image.asset("assets/images/$i.png"),
                          //       width: 157,
                          //       height: 200,
                          //     ),
                          //   ),
                          // ]),
                          ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

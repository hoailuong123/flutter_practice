import 'package:flutter/material.dart';
import 'package:practice-one/lib/screens/cart/cart_screen.dart';
import 'package:practice-one/lib/screens/congrats/congrats_screen.dart';
import 'package:practice-one/lib/screens/home/home_screen.dart';
import 'package:practice-one/lib/screens/profile/profile_screen.dart';
import 'package:practice-one/lib/screens/log_in/log_in_screen.dart';
import 'package:practice-one/lib/screens/product/product_screen.dart';
import 'package:practice-one/lib/screens/welcome/welcome_screen.dart';
import 'package:practice-one/lib/screens/check_out/check_out_screen.dart';
import 'package:practice-one/lib/screens/setting/setting_screen.dart';


final Map<String, WidgetBuilder> routes = {
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
  LogInScreen.routeName: (context) => LogInScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  ProductScreen.routeName: (context) => ProductScreen(), 
  CartScreen.routeName: (context) => CartScreen(),
  CheckOutScreen.routeName: (context) => CheckOutScreen(),
  SettingScreen.routeName: (context) => SettingScreen(),
  CongratsScreen.routeName: (context) => CongratsScreen(),
};


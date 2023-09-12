import 'package:flutter/material.dart';
import './screens/cart/cart_screen.dart';
import './screens/congrats/congrats_screen.dart';
import './screens/home/home_screen.dart';
import './screens/profile/profile_screen.dart';
import './screens/log_in/log_in_screen.dart';
import './screens/product/product_screen.dart';
import './screens/welcome/welcome_screen.dart';
import './screens/check_out/check_out_screen.dart';
import './screens/setting/setting_screen.dart';


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


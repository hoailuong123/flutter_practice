import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './screens/cart/cart_screen.dart';
import './screens/congrats/congrats_screen.dart';
import './screens/home/home_screen.dart';
import './screens/profile/profile_screen.dart';
import './screens/log_in/log_in_screen.dart';
import './screens/product/product_screen.dart';
import './screens/welcome/welcome_screen.dart';
import './screens/check_out/check_out_screen.dart';
import './screens/setting/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''),
        Locale('fr', ''),
      ],
      darkTheme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}

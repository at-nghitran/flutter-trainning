// Cores
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Views
import 'package:flutter_driving/views/pages/splash.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          bodyText2: TextStyle(
            fontSize: 13,
          ),
        ),
        scaffoldBackgroundColor: Colors.black,
      ),
      home: SplashPage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_khata/view/splash/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences prefs;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}
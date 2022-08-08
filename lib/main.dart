import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/home.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
            splash: Image.asset(
              "assets/screen1.png",
              fit: BoxFit.cover,
            ),
            backgroundColor: Colors.black,
            nextScreen: Home()));
  }
}

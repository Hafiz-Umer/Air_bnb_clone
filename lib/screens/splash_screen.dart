import 'dart:async';

import 'package:airbnb_clone_flutter/screens/home_screen.dart';
import 'package:airbnb_clone_flutter/screens/saved_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static final String id = 'splash_screen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void moveUserToHomeScreen() {
    Navigator.pop(context);
    Navigator.pushNamed(context, HomeScreen.id);
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => moveUserToHomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/splashscreen.jpeg'), fit: BoxFit.cover),
      ),
      constraints: BoxConstraints.expand(),
    );
  }
}

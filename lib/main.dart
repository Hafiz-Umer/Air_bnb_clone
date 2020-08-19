import 'package:airbnb_clone_flutter/screens/home_screen.dart';
import 'package:airbnb_clone_flutter/screens/saved_screen.dart';
import 'package:airbnb_clone_flutter/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
    initialRoute: SplashScreen.id,
    routes: <String, WidgetBuilder>{
      SplashScreen.id: (BuildContext context) => SplashScreen(),
      SavedScreen.id: (BuildContext context) => SavedScreen(),
      HomeScreen.id: (BuildContext context) => HomeScreen()
    },
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreen(),
    );
  }
}

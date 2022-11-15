import 'package:calculator_app/FirstScreen.dart';
import 'package:calculator_app/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'FirstScreen.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}

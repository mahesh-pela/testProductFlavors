import 'package:flutter/material.dart';
import 'package:test_dynamic/splashScreen.dart';

void main() {
  runApp(MyApp(flavor: "daunne"));
}

class MyApp extends StatelessWidget {
  final String flavor;
  const MyApp({super.key, required this.flavor});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(flavor: flavor),
    );
  }
}


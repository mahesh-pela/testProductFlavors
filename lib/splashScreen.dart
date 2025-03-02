import 'package:flutter/material.dart';
import 'package:test_dynamic/dashboard.dart';

class SplashScreen extends StatefulWidget {
  final String flavor;

  const SplashScreen({super.key, required this.flavor});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Dashboard()));
    });
  }

  @override
  Widget build(BuildContext context) {
    // Dynamically set splash image based on the flavor
    String splashImage = widget.flavor == "bizforce"
        ? "assets/images/bizforce.png"
        : "assets/images/daunne.png";

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 120, child: Image.asset(splashImage)),
            // Padding(
            //   padding: const EdgeInsets.all(20.0),
            //   child: CircularProgressIndicator(
            //     color: Colors.deepPurple,
            //   ),
            // ),
            // SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

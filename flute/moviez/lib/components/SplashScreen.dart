import 'dart:async';
import 'package:flutter/material.dart';
import 'package:moviez/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the HomeScreen after 3 seconds
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => MyHomePage(title: 'Moviez'), // Main screen of your app
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary, // Splash screen background color
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Moviez",
            style: TextStyle(
              fontSize: 50,
            color:  Color.fromARGB(255, 17, 17, 17),
           )),
          ],
        ),
      ),
    );
  }
}

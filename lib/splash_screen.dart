import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        const Duration(
            seconds: 10), // Adjust  the  duration according to requirements.
        // For Navigation
        () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => const HomeScren(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [
            Colors.deepPurple,
            Colors.blueGrey,
            // Colors.orange,
            // Colors.pinkAccent
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "image/img.png",
                width: 350,
              ),
              const SizedBox(height: 40),
              Lottie.network(
                  "https://lottie.host/76bbb7c4-07e5-4c52-89a6-c9523fc5b5e5/A78TDs9WH9.json",
                  height: 100)
            ],
          ),
        ),
      ),
    );
  }
}

class HomeScren extends StatelessWidget {
  const HomeScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Welcome to the App!"),
      ),
    );
  }
}

// This is our beautiful Splash Screen 
// Thank you.
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimation extends StatefulWidget {
  const LottieAnimation({super.key});

  @override
  State<LottieAnimation> createState() => _LottieAnimationState();
}

class _LottieAnimationState extends State<LottieAnimation> {
  @override
  void initState() {
    super.initState();
    //After 10 second lottie screeen is navigate to next screen
    Timer(const Duration(seconds: 10), () {
      // For Navigation
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const MyHomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Fron network
          // Lottie.network(
          //     "https://lottie.host/b0d39d4b-89cd-437f-9868-947f931bc774/z2Zgguqaif.json"),
          // From assets
          Lottie.asset("assets/lottie_animation.json"),
          Lottie.network(
              "https://lottie.host/276bd290-2e88-4e93-a7e7-6ea23fc44e9b/AJtb6kDlOE.json"),
        ],
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text("Home Page"),
      ),
      body: const Center(
        child: Text(
          "Welcome",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
//  https://media.istockphoto.com/id/927570754/photo/beautiful-woman.jpg?s=1024x1024&w=is&k=20&c=vqLr2Gnv3M44AlknZESOF6dUkZbNNavcXYEcodRdZ2c=   
//https://images.unsplash.com/photo-1508615039623-a25605d2b022?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzV8fGJhY2tncm91bmR8ZW58MHx8MHx8fDA%3D
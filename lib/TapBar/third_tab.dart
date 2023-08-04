import 'package:flutter/material.dart';

class ThirdTabe extends StatelessWidget {
  const ThirdTabe({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: Center(
        child: Text(
          "Third Tab",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

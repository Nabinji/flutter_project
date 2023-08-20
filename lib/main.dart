import 'package:flutter/material.dart';
import 'package:my_project/read_more_less.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ReadMoreLess(),
    );
  }
}

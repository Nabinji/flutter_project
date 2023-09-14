import 'package:flutter/material.dart';
import 'package:my_project/Date%20and%20Time/time_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyTimePicker(),
    );
  }
}

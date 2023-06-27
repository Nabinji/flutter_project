import 'package:flutter/material.dart';
import 'package:my_project/switch_button.dart';
// import 'package:my_project/radio_button.dart';

// import 'check_box.dart';
// import 'image_slider.dart';
// import 'new_calender.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SwitchButton(),
      // ImageSliders(),
      //  NepaliCalendar
      // CheckBox(),
      // RadioButton(),
    );
  }
}

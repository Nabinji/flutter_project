import 'package:flutter/material.dart';
import 'package:my_project/On_Boarding/home_screen.dart';
import 'package:my_project/On_Boarding/on_boarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool isShow = true;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final pref = await SharedPreferences.getInstance();
  isShow = pref.getBool('ON_BOARDING') ?? true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: isShow ? const OnBoardingScreen() : const HomeScreen());
  }
}

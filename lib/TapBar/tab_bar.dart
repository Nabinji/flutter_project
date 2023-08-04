import 'package:flutter/material.dart';
import 'package:my_project/TapBar/first_tab.dart';
import 'package:my_project/TapBar/second_tab.dart';
import 'package:my_project/TapBar/third_tab.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // I need 3 tab that's whay i give 3 you have give according to you requirement
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("TapBar"),
          bottom: const TabBar(tabs: [
            Tab(
              text: 'Home',
              icon: Icon(Icons.home),
            ),
            Tab(
              text: 'Favorite',
              icon: Icon(Icons.favorite),
            ),
            Tab(
              text: 'Person',
              icon: Icon(Icons.person),
            ),
          ]),
        ),
        body: const TabBarView(children: [
          FirstTab(),
          SecondTab(),
          ThirdTabe(),
        ]),
      ),
    );
  }
}

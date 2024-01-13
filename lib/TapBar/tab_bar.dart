import 'package:flutter/material.dart';
import 'package:my_project/TapBar/favorite_tab.dart';
import 'package:my_project/TapBar/home_tab.dart';
import 'package:my_project/TapBar/profile_tab.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        // I need 3 tabs that's why I give the length 3. YOu can give according to yours requirements.
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lime,
            centerTitle: true,
            title: const Text("TabBar"),
            bottom: const TabBar(
                labelColor: Colors.blue,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    text: "Home",
                    icon: Icon(Icons.home),
                  ),
                  Tab(
                    text: "Favorite",
                    icon: Icon(Icons.favorite),
                  ),
                  Tab(
                    text: "Profile",
                    icon: Icon(Icons.person),
                  ),
                ]),
          ),
          body: const TabBarView(children: [
            HomeTab(),
            FavoriteeTab(),
            ProfileTab(),
          ]),
        ));
  }
}

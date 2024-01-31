import 'package:flutter/material.dart';

class ThemPage extends StatefulWidget {
  const ThemPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ThemPageState createState() => _ThemPageState();
}

bool themeColor = false;
dynamic colorTheme() {
  if (themeColor) {
    return Colors.black;
  } else {
    return Colors.blue[200];
  }
}

class _ThemPageState extends State<ThemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorTheme(),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  themeColor = !themeColor;
                });
              },
              icon: themeColor
                  ? Icon(
                      Icons.brightness_3,
                      color: themeColor ? Colors.blue[200] : Colors.black,
                    )
                  : Icon(
                      Icons.wb_sunny,
                      color: themeColor ? Colors.blue[200] : Colors.black,
                    ))
        ],
      ),
      body: Container(
        color: colorTheme(),
      ),
    );
  }
}

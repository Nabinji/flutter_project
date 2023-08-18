import 'package:flutter/material.dart';

class MyFittedBox extends StatelessWidget {
  const MyFittedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("FittedBox"),
      ),
      body: Center(
        child: Container(
          height: 30,
          width: 300,
          color: Colors.amber,
          child: const FittedBox(

              /*
            -If you have give any height and width but still this fittedBox widget
            fit text inside container just in one line 
            -Text may bee very shor or very long.
            -It fit all text in just one line it my bee long or short text
            */
              child: Text(
                  "Flutter mobile, web, and desktop from a single codebase. ")),
        ),
      ),
    );
  }
}

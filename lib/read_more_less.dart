import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ReadMoreLess extends StatelessWidget {
  const ReadMoreLess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Readmore and less in Flutter App"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: ReadMoreText(
          "Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications from a single codebase for any web browser, Fuchsia, Android, iOS, Linux, macOS, and Windows. First described in 2015, Flutter was released in May 2017.Dart is a programming language designed by Lars Bak and Kasper Lund and developed by Google. The programming language can be used to develop web and mobile apps as well as server and desktop applications. It is an object-oriented, class-based, garbage-collected language with C-style syntax.",
          trimLines: 5, //how many line show before showmore
          trimMode: TrimMode.Line,
          lessStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
          moreStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
          trimCollapsedText: "showmore",
          trimExpandedText: "showless",
          textAlign: TextAlign.justify,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

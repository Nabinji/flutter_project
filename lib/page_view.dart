import 'package:flutter/material.dart';

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("PageView"),
      ),
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            color: Colors.pink,
            child: const Center(
              child: Text(
                "Page 1",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Container(
            color: Colors.green,
            child: const Center(
              child: Text(
                "Page 2",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            child: const Center(
              child: Text(
                "Page 3",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Container(
            color: Colors.orange,
            child: const Center(
              child: Text(
                "Page 4",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

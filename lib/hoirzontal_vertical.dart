import 'package:flutter/material.dart';

class HoriontalVerticleScrolling extends StatelessWidget {
  const HoriontalVerticleScrolling({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Horizontal and Vertical Scrolling"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.pink,
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              //by default it is vertical scrollable
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      color: Colors.pink,
                    ));
              },
            ),
          )
        ],
      ),
    );
  }
}

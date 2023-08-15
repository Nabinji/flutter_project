import 'package:flutter/material.dart';

class MyExpansionTile extends StatelessWidget {
  const MyExpansionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Expension Tile in Flutter"),
      ),
      body: ExpansionTile(
        title: const Text(
          "My Interest",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        children: [
          ListTile(
            onTap: () {},
            title: const Text("Cricket"),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Football"),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Basketball"),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Tennis"),
          ),
        ],
      ),
    );
  }
}

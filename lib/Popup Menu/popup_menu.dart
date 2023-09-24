import 'package:flutter/material.dart';
import 'package:my_project/Popup%20Menu/menu_items.dart';
import 'package:my_project/Popup%20Menu/setting.dart';

class PopupMenu extends StatefulWidget {
  const PopupMenu({super.key});

  @override
  State<PopupMenu> createState() => _PopupMenuState();
}

class _PopupMenuState extends State<PopupMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Popup Menu"),
        actions: [
          PopupMenuButton<String>(
              onSelected: choiceAction,
              itemBuilder: (BuildContext context) {
                return MenuItems.choices.map((String choice) {
                  return PopupMenuItem<String>(
                      value: choice,
                      child: ListTile(
                        title: Text(choice),
                        leading: Icon(MenuItems.choiceIcons[choice]),
                      ));
                }).toList();
              })
        ],
      ),
    );
  }

  void choiceAction(String choice) {
    if (choice == MenuItems.settings) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Setting()));
    } else if (choice == MenuItems.share) {
      print("Share");
    } else if (choice == MenuItems.exit) {
      Navigator.pop(context);
    }
  }
}

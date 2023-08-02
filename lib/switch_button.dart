import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({Key? key}) : super(key: key);

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch Button in Flutter"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return SwitchItem(
                title: index.toString(),
              );
            }),
      ), 
    );
  }
}

class SwitchItem extends StatefulWidget {
  final String title;
  const SwitchItem({super.key, required this.title});

  @override
  State<SwitchItem> createState() => _SwitchItemState();
}

class _SwitchItemState extends State<SwitchItem> {
  bool isSelected = false;
  void itemSwitch(bool value) {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor:
          isSelected ? const Color.fromARGB(255, 86, 128, 201) : Colors.white,
      title: Text("Power ${widget.title}"),
      subtitle: Text(isSelected ? "ON" : "OFF"),
      trailing: Switch(
        value: isSelected,
        onChanged: itemSwitch,
        activeColor: const Color.fromARGB(235, 36, 230, 230),
      ),
    );
  }
}

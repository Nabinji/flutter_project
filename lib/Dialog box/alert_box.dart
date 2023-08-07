import 'package:flutter/material.dart';
import 'package:my_project/Dialog%20box/second_screen.dart';

class AlertBox extends StatefulWidget {
  const AlertBox({super.key});

  @override
  _AlertState createState() => _AlertState();
}

class _AlertState extends State<AlertBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlertBox Dialog Box'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  myDialogBox(context);
                },
                child: const Text(
                  "Click Me",
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }

  Future<dynamic> myDialogBox(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: const Color.fromARGB(255, 7, 255, 255),
            title: const Text("Reset Setting"),
            content:
                const Text("This will reset all the settings on you device"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Cancel",
                  style: TextStyle(color: Colors.red),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondScreen()));
                  },
                  child: const Text("Accept",
                      style: TextStyle(color: Colors.black)))
            ],
          );
        });
  }
}

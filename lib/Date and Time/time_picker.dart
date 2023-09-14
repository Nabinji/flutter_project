import 'package:flutter/material.dart';

class MyTimePicker extends StatefulWidget {
  const MyTimePicker({super.key});

  @override
  _HiState createState() => _HiState();
}

class _HiState extends State<MyTimePicker> {
  late TimeOfDay time;
  _selectTime() async {
    TimeOfDay? picker =
        await showTimePicker(context: context, initialTime: time);
    if (picker != null) {
      setState(() {
        time = picker;
      });
    }
  }

  @override
  void initState() {
    time = TimeOfDay.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Time Picker in Flutter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _selectTime();
                });
              },
              child: const Text(
                "Pick Your Time",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Text("${time.hour}:${time.minute}")
          ],
        ),
      ),
    );
  }
}

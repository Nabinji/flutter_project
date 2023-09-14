import 'package:flutter/material.dart';

class MyDatePicker extends StatefulWidget {
  const MyDatePicker({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyDatePicker> {
  DateTime date = DateTime.now();
  void selectDatePicker() async {
    DateTime? datePicker = await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: DateTime(1999),
        lastDate: DateTime(2030));
    if (datePicker != null && datePicker != date) {
      setState(() {
        date = datePicker;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Time Picker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  selectDatePicker();
                },
                child: const Text("Pick Your Date")),
            const SizedBox(
              height: 10,
            ),
            // disply chosen Date
            Text(date.toString())
          ],
        ),
      ),
    );
  }
}

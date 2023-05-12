import 'package:flutter/material.dart';
import 'package:flutter_bs_ad_calendar/flutter_bs_ad_calendar.dart';

class NepaliCalendar extends StatefulWidget {
  const NepaliCalendar({super.key});

  @override
  State<NepaliCalendar> createState() => _NepaliCalendarState();
}

class _NepaliCalendarState extends State<NepaliCalendar> {
  DateTime? selectedDate;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nepali Calender"),
      ),
      body: FlutterBSADCalendar(
        initialDate: DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime(2024),
        onMonthChanged: (date, evens) {
          setState(() {
            selectedDate = date;
          });
        },
        onDateSelected: (date, events) {
          setState(() {
            selectedDate = date;
          });
        },
      ),
    );
  }
}

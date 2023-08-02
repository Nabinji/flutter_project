import 'package:flutter/material.dart';

class TableInFlutter extends StatelessWidget {
  const TableInFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Table in Flutter"),
      ),
      body: Center(
        child: DataTable(
          border: TableBorder.all(),
          headingTextStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          dataTextStyle: const TextStyle(color: Colors.black, fontSize: 18),
          columns: const [
            DataColumn(label: Text("Name")),
            DataColumn(label: Text("Address")),
            DataColumn(label: Text("Age"))
          ],
          rows: const [
            DataRow(cells: [
              DataCell(Text("Hari")),
              DataCell(Text("Nepal")),
              DataCell(Text("25")),
            ]),
            DataRow(cells: [
              DataCell(Text("Sita")),
              DataCell(Text("India")),
              DataCell(Text("20")),
            ]),
            DataRow(cells: [
              DataCell(Text("Gita")),
              DataCell(Text("Pakistan")),
              DataCell(Text("21")),
            ]),
          ],
        ),
      ),
    );
  }
}

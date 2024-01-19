// import 'package:flutter/material.dart';
// import 'package:pie_chart/pie_chart.dart';

// // ignore: must_be_immutable
// class PieChartSample extends StatelessWidget {
//   Map<String, double> dataMap = {
//     "Flutter": 4,
//     "Firebase": 3,
//     "Dart": 4,
//     "Figma": 2,
//     "YouTube": 1.5,
//   };
//   List<Color> colorsList = [
//     Colors.blue,
//     Colors.orange,
//     Colors.deepPurpleAccent,
//     Colors.greenAccent,
//     Colors.redAccent,
//   ];
//   PieChartSample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Colors.blue[200],
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: const Text("Pie Chart"),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: PieChart(
//           colorList: colorsList,
//           dataMap: dataMap,
//           // chartType: ChartType.ring,
//           chartLegendSpacing: 10,
//           chartRadius: MediaQuery.of(context).size.width / 1.2,
//           legendOptions: const LegendOptions(
//               // legendPosition: LegendPosition.bottom,
//               ),
//           chartValuesOptions: const ChartValuesOptions(
//             showChartValuesInPercentage: true,
//             // showChartValuesOutside: true,
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChartSample extends StatelessWidget {
  const PieChartSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const Align(
          alignment: Alignment.center,
          child: Text(
            "Total 169",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: SfCircularChart(
            series: <CircularSeries>[
              DoughnutSeries<SalesData, String>(
                // Bind data source
                dataSource: <SalesData>[
                  SalesData('Jan', 35),
                  SalesData('Feb', 28),
                  SalesData('Mar', 34),
                  SalesData('Apr', 32),
                  SalesData('May', 40)
                ],
                xValueMapper: (SalesData sales, _) => sales.year,
                yValueMapper: (SalesData sales, _) => sales.sales,
                dataLabelSettings: const DataLabelSettings(isVisible: true),
              )
            ],
          ),
        ),
      ],
    ));
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}

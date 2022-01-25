import 'package:ebank/constant.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../constant.dart';

class LineChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minX: 0,
        maxX: 7,
        minY: 0,
        maxY: 49,
        borderData: FlBorderData(show: false),
        gridData: FlGridData(show: false),

        titlesData: FlTitlesData(
          show: true,
          topTitles: SideTitles(showTitles: false),
          bottomTitles: SideTitles(
            showTitles: true,
            reservedSize: 20,
            margin: 8,
            getTextStyles: (context, _) => const TextStyle(
              color: kDeepBlueColor,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
            getTitles: (value) {
              switch (value.toInt()) {
                case 0:
                  return "Sun";
                case 1:
                  return "Mon";
                case 2:
                  return "The";
                case 3:
                  return "Wed";
                case 4:
                  return "Thu";
                case 5:
                  return "Fri";
              }
              return "Sat";
            },
          ),
          rightTitles: SideTitles(showTitles: false),
          leftTitles: SideTitles(showTitles: false),
        ),
        // gridData: FlGridData(show:true,get)
        lineBarsData: [
          LineChartBarData(
            spots: [
              FlSpot(0, 0),
              FlSpot(1, 1),
              FlSpot(2, 4),
              FlSpot(3, 9),
              FlSpot(4, 16),
              FlSpot(5, 25),
              FlSpot(6, 36),
              FlSpot(7, 49)
            ],
            isCurved: true,
            dotData: FlDotData(show: false),
            colors: [kBlueColor],
            barWidth: 5,
            belowBarData: BarAreaData(
              show: true,
              colors: [kBlueColor],
            ),
          ),
          LineChartBarData(
              spots: [
                FlSpot(0, 0),
                FlSpot(1, 0.5),
                FlSpot(2, 3),
                // FlSpot(3, 4.5),
                // FlSpot(4, 8),
                // FlSpot(5, 19),
                // FlSpot(6, 18),
                FlSpot(7, 24)
              ],
              dotData: FlDotData(show: false),
              isCurved: true,
              colors: [kDeepBlueColor],
              barWidth: 5,
              belowBarData: BarAreaData(
                show: true,
                colors: [kDeepBlueColor],
              ))
        ],
      ),
      swapAnimationDuration: const Duration(milliseconds: 250),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class flChartcard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: 1.2,
        child: PieChart(
          PieChartData(
            centerSpaceRadius: 60,
            sectionsSpace: 3,
            startDegreeOffset: -90,
            sections: showingSections(),
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return [
      PieChartSectionData(
        
       
         color: Colors.red,
        value: 3,
        title: '03\nDays',
        radius: 70,
        titleStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
        titlePositionPercentageOffset: 0.65,


      ),
      PieChartSectionData(
        
        color: Colors.orange,
        value: 2,
        title: '02\nDays',
        radius: 70,
        titleStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
        titlePositionPercentageOffset: 0.65,
      ),
      PieChartSectionData(
          color: Colors.blue,
        value: 6,
        title: '06\nDays',
        radius: 70,
        titleStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
        titlePositionPercentageOffset: 0.65,
       
        
      ),
      PieChartSectionData(
        color: Colors.green,
        value: 20,
        title: '20\nDays',
        radius: 70,
        titleStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
        titlePositionPercentageOffset: 0.65,
       
      ),
    ];
  }
}

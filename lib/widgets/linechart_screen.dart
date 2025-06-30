import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';

class Linechartscreen extends StatelessWidget {
  const Linechartscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minX: 0,
        maxX: 11,
        minY: 0,
        maxY: 10,
       gridData: FlGridData(
  show: true,
  drawHorizontalLine: true,
  drawVerticalLine: true,
  horizontalInterval: 2.5,
  verticalInterval: 1,
  getDrawingHorizontalLine: (value) {
    return FlLine(
      color: Colors.grey.withOpacity(0.3),
      strokeWidth: 1,
      dashArray: [4, 4],
    );
  },
  getDrawingVerticalLine: (value) {
    // Show vertical line only at the top-left (x = 0)
    if (value == 0) {
      return FlLine(
        color: Colors.grey.withOpacity(0.3),
        strokeWidth: 1,
        dashArray: [4, 4],
      );
    }
    // Don't draw other vertical lines
    return FlLine(
      color: Colors.transparent,
      strokeWidth: 0,
    );
  },
),


        
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: 1,
              getTitlesWidget: (value, meta) {
                const months = [
                  'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                  'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
                ];
                return SideTitleWidget(
                  axisSide: meta.axisSide,
                  child: Text(months[value.toInt()], style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                );
              },
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        lineBarsData: [
          _buildLine(
            color: Colors.green,
            values: [7, 8, 5, 7, 6, 8, 9, 8, 8.5, 9, 9.2, 9.5],
          ),
          _buildLine(
            color: Colors.blue,
            values: [5.5, 6, 5, 6.5, 5.5, 6.8, 6.7, 6.8, 7, 7.2, 7.1, 7.3],
          ),
          _buildLine(
            color: Colors.red,
            values: [5.8, 6.2, 4.9, 6.3, 4.5, 4.2, 5.0, 6.2, 5.4, 6.1, 4.5, 5.0],
          ),
        ],
        borderData: FlBorderData(show: false),
      ),
    );
  }

  LineChartBarData _buildLine({required Color color, required List<double> values}) {
    return LineChartBarData(
      spots: List.generate(values.length, (i) => FlSpot(i.toDouble(), values[i])),
      isCurved: false, 
      color: color,
      barWidth: 2,
      isStrokeCapRound: false,
      dotData: FlDotData(
        show: true,
        getDotPainter: (spot, percent, barData, index) {
          // Circular filled dot
          return FlDotCirclePainter(
            radius: 3,
            color: color,
            strokeWidth: 0,
          );
        },
      ),
      belowBarData: BarAreaData(show: false),
      shadow: const Shadow(color: Colors.black26, blurRadius: 4),
      preventCurveOverShooting: true,
    );
  }
}

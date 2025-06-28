import 'package:flutter/material.dart';

class WorkSummaryScreen extends StatelessWidget {
  const WorkSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Material(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        shadowColor: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildInfoRow(Icons.date_range_outlined, "Total Working", "Days", "20"),
                    SizedBox(height: 50),
                    _buildInfoRow(Icons.timer, "Average Daily", "Hours", "8.0 H"),
                    SizedBox(height: 50),
                    _buildInfoRow(Icons.person, "Projects Involved", "Revenue", "Dashboard"),
                  ],
                ),
              ),
              SizedBox(width: 30),
              
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildInfoRow(Icons.timer, "Total Hours", "Worked", "160"),
                    SizedBox(height: 50),
                    _buildInfoRow(Icons.bar_chart, "Productivity", "Indicator", "80%"),
                    SizedBox(height: 50),
                    _buildInfoRow(Icons.menu, "Leave", "Token", "2 days"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String title1, String title2, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.blueAccent),
        SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title1),
            Text(title2),
            Text(
              value,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}

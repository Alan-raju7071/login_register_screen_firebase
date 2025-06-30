import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/widgets/circular_indicator.dart';

class TaskTrackerScreen extends StatelessWidget {
  const TaskTrackerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(4, (index) => _buildTaskCard(index)),
    );
  }

  Widget _buildTaskCard(int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Text(
                "Responsive Design",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.green),
              ),
              Spacer(),
              Text("Due Date: 18-06-2025"),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Status:", style: TextStyle(fontSize: 16)),
              _buildStatusItem("Not started"),
              _buildStatusItem("In progress"),
              _buildStatusItem("Completed"),
              _buildStatusItem("Overdue"),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Text("Progress"),
                  const SizedBox(width: 10),
                  circular_indicator(percentage: 0.25 + index * 0.15),
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.timer, color: Colors.orange),
                  SizedBox(width: 4),
                  Text("2 days\nremaining", style: TextStyle(color: Colors.orange)),
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.edit),
                  SizedBox(width: 4),
                  Text("Assigned by\nOption"),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Text("Priority"),
              SizedBox(width: 20),
              Text("Low"),
              SizedBox(width: 20),
              Text("Medium"),
              SizedBox(width: 20),
              Text("High"),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildOption("Sort"),
              _buildOption("Update", color: Colors.green),
              _buildOption("Complete"),
            ],
          ),
          const Divider(thickness: 1),
        ],
      ),
    );
  }

  static Widget _buildStatusItem(String label) {
    return Row(
      children: [
        const CircleAvatar(radius: 8, backgroundColor: Colors.grey),
        const SizedBox(width: 4),
        Text(label),
      ],
    );
  }

  static Widget _buildOption(String label, {Color color = Colors.black}) {
    return Row(
      children: [
        Icon(Icons.radio_button_checked, color: color),
        const SizedBox(width: 4),
        Text(label),
      ],
    );
  }
}

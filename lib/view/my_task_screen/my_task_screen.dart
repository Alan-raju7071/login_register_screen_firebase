import 'package:flutter/material.dart';

class MyTaskScreen extends StatelessWidget {
  const MyTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          _buildTaskCard(
            title: "UI/UX Design Implement",
            description:
                ".Translating design specifications into functional and visually appealing user interfaces using HTML, CSS, and JavaScript.",
          ),
          _buildTaskCard(
            title: "Responsive Design",
            description:
                ".Ensuring that the application adapts seamlessly to different screen sizes and devices.",
          ),
          _buildTaskCard(
            title: "Back-end Development",
            description:
                ".Creating and managing databases for efficient data storage, retrieval, and processing.",
          ),
          _buildTaskCard(
            title: "Server-Side Logic",
            description:
                ".Developing and maintaining the logic that runs on the server, handling user requests, processing data, and interacting with databases.",
          ),
          
        ],
      ),
    );
  }

  Widget _buildTaskCard({
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.green)),
          SizedBox(height: 5),
          Text(description),
          SizedBox(height: 5),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                "Start",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Divider(color: Colors.black),
        ],
      ),
    );
  }
}

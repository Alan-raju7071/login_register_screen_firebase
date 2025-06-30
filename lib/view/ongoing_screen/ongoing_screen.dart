import 'package:flutter/material.dart';

class OngoingScreen extends StatelessWidget {
  const OngoingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(4, (_) => _buildOngoingTaskCard()),
    );
  }

  Widget _buildOngoingTaskCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Row(
            children: [
              Text(
                "UI/UX Design Implement",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.green),
              ),
              Spacer(),
              Text("50% Done")
            ],
          ),
          SizedBox(height: 6),

        
          Row(
            children: [
              Text("Status: "),
              Text("Ongoing task", style: TextStyle(color: Colors.blue)),
            ],
          ),
          SizedBox(height: 10),

          
          Row(children: [Text("Start date: "), Text("12-05-2025")]),
          SizedBox(height: 10),
          Row(children: [Text("Expected completion: "), Text("12-06-2025")]),
          SizedBox(height: 10),

        
          Row(
            children: [
              Text("Priority"),
              SizedBox(width: 10),
              Text("High", style: TextStyle(color: Colors.red)),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  "Mark as done",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Divider(color: Colors.black),
        ],
      ),
    );
  }
}

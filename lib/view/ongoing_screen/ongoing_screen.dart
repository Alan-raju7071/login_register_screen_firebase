import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';

class OngoingScreen extends StatelessWidget {
  const OngoingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(4, (index) => _buildOngoingTaskCard(index)),
    );
  }

  Widget _buildOngoingTaskCard(int index) {
    
String progressText;
switch (index) {
  case 0:
    progressText = "60% Done";
    break;
  case 1:
    progressText = "45% Done";
    break;
  case 2:
    progressText = "75% Done";
    break;
  default:
    progressText = "26% Done";
}

    
    String priorityText;
    Color priorityColor;

    switch (index) {
      case 0:
        priorityText = "High";
        priorityColor = Colorconstant.primaryred;
        break;
      case 1:
        priorityText = "Medium";
        priorityColor = Colorconstant.primaryorange;
        break;
      case 2:
        priorityText = "Low";
        priorityColor = Colorconstant.green;
        break;
      default:
        priorityText = "High";
        priorityColor = Colorconstant.primaryred;
    }

    
    String statusText;
    Color statusColor;

    switch (index) {
      case 0:
        statusText = "Pending task";
        statusColor = Colorconstant.primaryyellow; 
        break;
      case 1:
      case 2:
        statusText = "Ongoing task";
        statusColor = Colorconstant.primaryblue;
        break;
      default:
        statusText = "Pending task";
        statusColor = Colorconstant.primaryyellow;
    }

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
              Text(progressText)
            ],
          ),
          SizedBox(height: 6),
          Row(
            children: [
              Text("Status: "),
              Text(statusText, style: TextStyle(color: statusColor)),
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
              Text(priorityText, style: TextStyle(color: priorityColor)),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: Colorconstant.primaryblue,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  "Mark as done",
                  style: TextStyle(color: Colorconstant.primarywhite, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Divider(color: Colorconstant.primaryblack),
        ],
      ),
    );
  }
}

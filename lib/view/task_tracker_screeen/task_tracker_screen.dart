import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/widgets/circular_indicator.dart';
final List<Color> mediumColors = [
  Colorconstant.primaryblack,
   Colorconstant.primaryyellow,
   Colorconstant.primaryyellow,
    Colorconstant.primaryblack,
];
final List<Color> LowColors = [
  Colorconstant.green,
   Colorconstant.primaryblack,
   Colorconstant.primaryblack,
  Colorconstant.primaryblack,
];
final List<Color> highColors = [
   Colorconstant.primaryblack,
    Colorconstant.primaryblack,
    Colorconstant.primaryblack,
  Colorconstant.primaryred
];

final List<Color> startColors = [
  Colorconstant.green,
   Colorconstant.primaryblack,
   Colorconstant.primaryblack,
   Colorconstant.green,
];
final List<Color> updateColors = [
   Colorconstant.primaryblack,
  Colorconstant.green,
   Colorconstant.primaryblack,
  Colorconstant.primaryblack,
];

final List<Color> CompleteColors = [
   Colorconstant.primaryblack,
    Colorconstant.primaryblack,
   Colorconstant.green,
   Colorconstant.primaryblack,
  
];

final List<Color> sratColors = [
   Colorconstant.darkgrey,
   Colorconstant.darkgrey,
   Colorconstant.darkgrey,
   Colorconstant.darkgrey,
  
];
final List<Color> progresColors = [
  Colorconstant.darkgrey,
   Colorconstant.darkgrey,
   Colorconstant.primaryyellow,
   Colorconstant.darkgrey,
];
final List<Color> compiColors = [
   Colorconstant.darkgrey,
   Colorconstant.green,
   Colorconstant.darkgrey,
   Colorconstant.darkgrey,
];
final List<Color> overColors = [
  Colorconstant.darkgrey,
   Colorconstant.darkgrey,
   Colorconstant.darkgrey,
   Colorconstant.primaryred
];




class TaskTrackerScreen extends StatelessWidget {
  const TaskTrackerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(4, (index) => _buildTaskCard(index,
      LowColors[index],
      mediumColors[index],
      highColors[index],
      startColors [index],
      updateColors [index],
      CompleteColors [index],
      sratColors[index],
       progresColors[index],
       compiColors[index],
       overColors[index]


      
      )),
    );
  }

  Widget _buildTaskCard(int index, Color lowColor, Color mediumColor, Color highColor, Color startColor,Color updateColor,Color CompleteColors ,Color sratColors,Color progresColors,Color compiColors,Color  overColors ) {
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
              _buildStatusItem("Not started",colors: sratColors),
              _buildStatusItem("In progress",colors: progresColors),
              _buildStatusItem("Completed",colors: compiColors),
              _buildStatusItem("Overdue",colors: overColors),
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
           Row(
            children: [
              Text("Priority"),
              SizedBox(width: 20),
              Text("Low",style: TextStyle(color: lowColor ),),
              SizedBox(width: 20),
              Text("Medium",style: TextStyle(color: mediumColor ),),
              SizedBox(width: 20),
              Text("High",style: TextStyle(color: highColor ),),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildOption("Sort",color: startColor),
              _buildOption("Update", color: updateColor),
              _buildOption("Complete",color: CompleteColors),
            ],
          ),
          const Divider(thickness: 1),
        ],
      ),
    );
  }

  static Widget _buildStatusItem(String label,{Color colors = Colors.grey}) {
    return Row(
      children: [
         CircleAvatar(radius: 5, backgroundColor: colors),
         SizedBox(width: 4),
        Text(label),
      ],
    );
  }

  static Widget _buildOption(String label, {Color color = Colors.black}) {
    return Row(
      children: [
        Icon(Icons.radio_button_checked, color: color,size: 16),
        const SizedBox(width: 4),
        Text(label),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class circlescreen extends StatelessWidget {
  final double percentage;

  const circlescreen({super.key, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 100,
          height: 100,
          child: CircularProgressIndicator(
            value: percentage,
            strokeWidth: 8,
            color: Colors.green,
            backgroundColor: Colors.grey[300],
          ),
        ),
        Text(
          '${(percentage * 100).toInt()}%',
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ); 
  }
}

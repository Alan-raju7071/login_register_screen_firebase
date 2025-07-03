import 'package:flutter/material.dart';

class circular_indicator extends StatelessWidget {
  final double percentage;

  const circular_indicator({super.key, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 35,
          height: 35,
          child: CircularProgressIndicator(
            
            value: percentage,
            strokeWidth: 4,
            color: Colors.green,
            backgroundColor: Colors.grey[300],
          ),
        ),
        Text(
          '${(percentage * 100).toInt()}%',
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ); 
  }
}

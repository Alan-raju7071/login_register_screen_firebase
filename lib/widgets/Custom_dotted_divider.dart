import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class Custom_dotted_divider extends StatelessWidget {
  const Custom_dotted_divider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
  width: double.infinity, // ensures it takes all available width
  height: 2,
  child: DottedLine(
    dashColor: Colors.grey,
    lineThickness: 2.0,
  ),
);

  }
}
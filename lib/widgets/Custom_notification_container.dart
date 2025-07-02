import 'package:flutter/material.dart';

class Custom_notification_container extends StatefulWidget {
  final String title;
  final Color titlecolor;

  final String message;
  final Color iconColor;
  final IconData icon;
  const Custom_notification_container({
    super.key,required this.title,
    required this.titlecolor,
    required this.message,
    required this.iconColor,
    required this.icon,
  });

  @override
  State<Custom_notification_container> createState() => _Custom_notification_containerState();
}

class _Custom_notification_containerState extends State<Custom_notification_container> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(widget.icon, color: widget.iconColor,),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
    Text(
      widget.title,
      style: TextStyle(
        color: widget.titlecolor,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    ),
    SizedBox(height: 4),
    Text(
      widget.message,
      style: TextStyle(
        color: Colors.black54,
        fontSize: 12,
        fontWeight: FontWeight.bold
        
      ),
    ),
              ],
            ),
          ),
        ],
      ),
    ),
    
    );
  }
}
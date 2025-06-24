import 'package:flutter/material.dart';

class custom_date_container extends StatefulWidget {
  final String date;
  final Color containercolor;
  final Color datecolor;

  const custom_date_container({
    super.key,
    required this.containercolor,required this.date,required this.datecolor
  });

  @override
  State<custom_date_container> createState() => _custom_date_containerState();
}

class _custom_date_containerState extends State<custom_date_container> {
  @override
  Widget build(BuildContext context) {
    return Container(
     width: 40.0, 
      height: 40.0, 
        color: widget.containercolor,
      child: Center(
        child: Text(
           widget.date, 
    style: TextStyle(color: widget.datecolor),
       ),
      ),
    );
  }
}
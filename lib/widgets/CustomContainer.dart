import 'package:flutter/material.dart';

class custom_container extends StatefulWidget {
  final String text;
  final Color textcolor;
  const custom_container({
    super.key,required this.text,required this.textcolor,
  });

  @override
  State<custom_container> createState() => _custom_containerState();
}

class _custom_containerState extends State<custom_container> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: Material(
            elevation: 2,
            child: Container(
              height: 60,
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Text(widget.text,style: TextStyle(
                color: widget.textcolor,
              ),),
            ),
          ),
        );
  }
}


import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';

class custom_containerh extends StatefulWidget {
  final String text;
  
  const custom_containerh({
    super.key,required this.text,
  });

  @override
  State<custom_containerh> createState() => _custom_containerhState();
}

class _custom_containerhState extends State<custom_containerh> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        elevation: 2,
        child: Container(
          height: 40,
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          child: Text(widget.text,style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colorconstant.primaryblue
          ),),
        ),
      ),
    );
  }
}
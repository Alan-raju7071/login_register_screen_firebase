import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';

class custom_overview_container extends StatefulWidget {
  final String texttitle;
  final String textsubtitle;
  final Color textcolor;

  const custom_overview_container({
    super.key,
    required this.texttitle,required this.textsubtitle,required this.textcolor
  });

  @override
  State<custom_overview_container> createState() => _custom_overview_containerState();
}

class _custom_overview_containerState extends State<custom_overview_container> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        elevation: 2,
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(widget.texttitle,style: TextStyle(
                fontSize: 12,color: widget.textcolor,
                fontWeight: FontWeight.bold
              ),),
              Text(widget.textsubtitle,style: TextStyle(
                fontSize: 20,color: widget.textcolor,
                fontWeight: FontWeight.bold
              ),),
        
            ],
          ),
        
        ),
      ),
    );
  }
}
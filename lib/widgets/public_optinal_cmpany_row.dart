import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';

class public_optinal_cmpany_row extends StatefulWidget {
  final Color Firstcolor;
   final Color Secondcolor;
    final Color Thirdcolor;
    final String firsttext;
    final String secondtext;
    final String thirdtext;

  const public_optinal_cmpany_row({
    super.key,required this.Firstcolor,
    required this.Secondcolor,
    required this.Thirdcolor,
    required this.firsttext,
    required this.secondtext,
    required this.thirdtext
  });

  @override
  State<public_optinal_cmpany_row> createState() => _public_optinal_cmpany_rowState();
}

class _public_optinal_cmpany_rowState extends State<public_optinal_cmpany_row> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            height: 15,
            width: 15,
            color: widget.Firstcolor,
          ),
        ),
        Text(widget.firsttext),
        SizedBox(width: 10,),
                                  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            height: 15,
            width: 15,
            color: widget.Secondcolor
          ),
        ),
        Text(widget.secondtext),
        SizedBox(width: 10,),
                                  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            height: 15,
            width: 15,
            color: widget.Thirdcolor,
          ),
        ),
        Text(widget.thirdtext),
        SizedBox(width: 10,)
         ],
    );
  }
}
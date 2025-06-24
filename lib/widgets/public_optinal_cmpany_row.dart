import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';

class public_optinal_cmpany_row extends StatelessWidget {
  const public_optinal_cmpany_row({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            height: 15,
            width: 15,
            color: Colorconstant.green,
          ),
        ),
        Text("Public"),
        SizedBox(width: 10,),
                                  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            height: 15,
            width: 15,
            color: Colorconstant.primaryyellow
          ),
        ),
        Text("Optional"),
        SizedBox(width: 10,),
                                  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            height: 15,
            width: 15,
            color: Colorconstant.primaryblue,
          ),
        ),
        Text("Company"),
        SizedBox(width: 10,)
         ],
    );
  }
}
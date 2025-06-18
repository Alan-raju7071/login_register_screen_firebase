import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';

class submitbutton extends StatelessWidget {
  const submitbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colorconstant.primaryblue
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Center(
          child: Text("submit",style: TextStyle(
            color: Colorconstant.primarywhite
          ),),
        ),
      ),
    );
  }
}


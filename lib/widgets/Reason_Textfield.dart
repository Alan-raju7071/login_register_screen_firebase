import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';

class Reason_Textfield extends StatelessWidget {
  const Reason_Textfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
       child: TextField(
        
         maxLines: 3,
                decoration: const InputDecoration(
    hintText: "Text area",
    hintStyle: TextStyle(color: Colorconstant.primarygrey,
    fontSize: 15
    ),
    border: InputBorder.none,
                ),
              
       ),
     );
  }
}


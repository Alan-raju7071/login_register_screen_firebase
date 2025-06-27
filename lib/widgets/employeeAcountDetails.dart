import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/utulits/constant/text_constant.dart';

class employeeAcountDetails extends StatelessWidget {
  const employeeAcountDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("PF A/C Number :",style: TextStyle(
                            color: Colorconstant.darkgrey
                          ),),
         Text(TextConstant.userAccountno,style: TextStyle(fontWeight: FontWeight.bold),),
         SizedBox(width: 20,),
          Text("UAN   :",style: TextStyle(
                            color: Colorconstant.darkgrey
                          ),),
           Text(TextConstant.userUAN,style: TextStyle(fontWeight: FontWeight.bold),),
              
      ],
    );
  }
}


import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';

class ziyalog extends StatelessWidget {
  final String selectedMonth;
  const ziyalog({
    super.key,required this.selectedMonth,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage:AssetImage("assets/image/logos.png")
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Ziya Academy",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colorconstant.primaryblue),),
                                            Text("Key-To-Success",style: TextStyle(fontWeight: FontWeight.bold,color: Colorconstant.dark22green),)
                                          ],
                                        )
    
              
            ],
          ),
          
        ),
        Spacer(),
        Column(
                children: [
                  Text("payslip for the month",style: TextStyle(fontSize: 12,color: Colorconstant.darkgrey),),
                  Text(selectedMonth,style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              )
      ],
    );
  }
}
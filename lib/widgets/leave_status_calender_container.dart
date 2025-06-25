import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/widgets/custom_static_calender.dart';

class leave_status_calender_container extends StatelessWidget {
  const leave_status_calender_container({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                     width: 40, 
                      height: 40, 
                    child: Center(
                      child: Text("Sun",style: TextStyle(
     color: Colorconstant.primaryred
                      ),),
                    ),
                  ),
                  Container(
                     width: 40, 
                     height: 40, 
                    child: Center(child: Text("Mon"))),
                  Container(
                     width: 40, 
                     height: 40, 
                    child: Center(child: Text("Tue"))),
                  Container(
                     width: 40, 
                     height: 40, 
                    child: Center(child: Text("Wed"))),
                  Container(
                     width: 40, 
                     height: 40, 
                    child: Center(child: Text("Thu"))),
                  Container(
                     width: 40, 
                     height: 40, 
                    child: Center(child: Text("Fri"))),
                  Container(
                     width: 40, 
                     height: 40, 
                    child: Center(child: Text("Sat"))),
                ],
              ),
              Text("June 2025",style: TextStyle(fontWeight: FontWeight.bold),),
              
                 Container(
                  padding: EdgeInsets.all(10),
                  decoration:BoxDecoration(
                    border: Border.all(color: Colorconstant.lightgrey)
                  ) ,
                  child: custom_static_calender()),
                ],
          ),
              );
  }
}


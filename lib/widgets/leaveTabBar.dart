import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';

class leaveTabBar extends StatelessWidget {
  const leaveTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colorconstant.lightgrey, 
            
            borderRadius: BorderRadius.circular(10)
          ),
          child: TabBar(
             unselectedLabelColor: Colorconstant.primaryblack,
             
             unselectedLabelStyle: TextStyle(
               fontWeight: FontWeight.normal,
             ),
              indicatorSize: TabBarIndicatorSize.tab,
              labelStyle: TextStyle(
               fontWeight: FontWeight.bold,
              ),
              labelColor: Colorconstant.primaryblue,
               indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color:Colorconstant.lightgrey,
                 ),
              dividerHeight: 0,
              tabs:[
              Tab(
                child: Row(children: [
                  Icon(Icons.dashboard_outlined),
                  SizedBox(width: 8),
        Text("Dashboard"),
                ],),
              ),
               Tab(
                child: Row(children: [
                  Icon(Icons.receipt_long),
                  SizedBox(width: 8),
        Text("Request Leave"),
                ],),
              )
            ]),
        ),
          
           
      ]  
    );
  }
}
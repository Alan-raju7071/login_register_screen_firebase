import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/utulits/constant/image_constant.dart';
import 'package:login_register_screen_firebase/widgets/CustomContainer.dart';
import 'package:login_register_screen_firebase/widgets/Leave_status_container.dart';
import 'package:login_register_screen_firebase/widgets/calender_and_details_container.dart';
import 'package:login_register_screen_firebase/widgets/custom_containerhh.dart';
import 'package:login_register_screen_firebase/widgets/custom_static_calender.dart';
import 'package:login_register_screen_firebase/widgets/leave_overview_container.dart';
import 'package:login_register_screen_firebase/widgets/leave_status_calender_container.dart';

class LeaveStatusScreen extends StatelessWidget {
  const LeaveStatusScreen({super.key});
 @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async {
        Navigator.pop(context);
        return false;
        
      },
      child: Scaffold(
       appBar: AppBar(
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(5),
            child: CircleAvatar(
             radius: 22,
            backgroundImage: NetworkImage(ImageConst.appbarimage ),
                 ),
          ),
               title: Material(
                 elevation: 2,
                 shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
                 child: Container(
                   height: 45, 
                   padding: const EdgeInsets.symmetric(horizontal: 12),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(5),
                     border: Border.all(color: Colors.transparent),
                     color: Colors.white,
                   ),
                   alignment: Alignment.centerLeft,
                   child: Text(
                     'Search',
                     style: TextStyle(
                       fontSize: 14,
                       color: Colorconstant.lightgrey,  
                       fontWeight: FontWeight.normal,
                     ),
                   ),
                 ),
               ),
         actions: [
        CircleAvatar(
      radius: 15,
          backgroundColor: Colors.blue,
          child: Icon(Icons.notifications, color: Colors.white),
        ),
        SizedBox(width: 10,),
         CircleAvatar(
           radius: 15,
          backgroundImage: NetworkImage(ImageConst.profileimage)
               ),
                SizedBox(width: 10,),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              leave_status_container(),
                   leave_status_calender_container(),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    custom_containerh(text: "Date",),
                    SizedBox(width: 1,),
                     custom_containerh(text: "Leave Type",),
                    SizedBox(width: 1,),
                     custom_containerh(text: "Status",),
                    SizedBox(width: 1,),
                     custom_containerh(text: "Reason",),
                   ],
                ),
                SizedBox(height: 1,),
                Row(
                  children: [
                    custom_container(text: "10 June",textcolor: Colorconstant.primaryblack,),
                     SizedBox(width: 1,),
                    custom_container(text: "Sick Leave",textcolor: Colorconstant.primaryblack,),
                     SizedBox(width: 1,),
                    custom_container(text: "Approved",textcolor: Colorconstant.green,),
                     SizedBox(width: 1,),
                    custom_container(text: "Fever",textcolor: Colorconstant.primaryblack,),
                    ],
                ),
                SizedBox(height: 1,),
                Row(
                  children: [
                    custom_container(text: "20 June",textcolor: Colorconstant.primaryblack,),
                     SizedBox(width: 1,),
                    custom_container(text: "Casual \nLeave",textcolor: Colorconstant.primaryblack,),
                     SizedBox(width: 1,),
                    custom_container(text: "pending",textcolor: Colorconstant.primaryyellow,),
                     SizedBox(width: 1,),
                    custom_container(text: "Family \nFunction",textcolor: Colorconstant.primaryblack,),
                    ],
                ),
                SizedBox(height: 1,),
                Row(
                  children: [
                    custom_container(text: "01 July",textcolor: Colorconstant.primaryblack,),
                     SizedBox(width: 1,),
                    custom_container(text: "WFH",textcolor: Colorconstant.primaryblack,),
                     SizedBox(width: 1,),
                    custom_container(text: "Rejected",textcolor: Colorconstant.primaryred,),
                     SizedBox(width: 1,),
                    custom_container(text: "No backup",textcolor: Colorconstant.primaryblack,),
                     ],
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container( 
              decoration:BoxDecoration(
                border: Border.all(color: Colorconstant.lightgrey)
              ) ,child: leave_overview_container())
            ]
         ),
        ),
      )
      )
    );
  }
}


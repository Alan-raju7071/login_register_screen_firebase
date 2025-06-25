import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/utulits/constant/image_constant.dart';
import 'package:login_register_screen_firebase/widgets/calender_and_details_container.dart';
import 'package:login_register_screen_firebase/widgets/custom_date_container.dart';
import 'package:login_register_screen_firebase/widgets/custom_static_calender.dart';
import 'package:login_register_screen_firebase/widgets/public_optinal_cmpany_row.dart';
import 'package:login_register_screen_firebase/widgets/totalhiliday_containers.dart';

class HolidayListScreen extends StatelessWidget {
  const HolidayListScreen({super.key});
@override
  Widget build(BuildContext context) {
    return WillPopScope( onWillPop: ()async {

      Navigator.pop(context);
      return false;
    },child:
    Scaffold(
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
              totalhiliday_containers(),
                        SizedBox(height: 10,),
                        public_optinal_cmpany_row(),
                        calender_and_details_container()
         ],
          ),
        ),
      ),
    )
    );
  }
}




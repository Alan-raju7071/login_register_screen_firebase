import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/utulits/constant/image_constant.dart';
import 'package:login_register_screen_firebase/widgets/daily_clock_container.dart';
import 'package:login_register_screen_firebase/widgets/linechart_screen.dart';
import 'package:login_register_screen_firebase/widgets/public_optinal_cmpany_row.dart';
import 'package:login_register_screen_firebase/widgets/report_detail_container.dart';
import 'package:login_register_screen_firebase/widgets/totalhiliday_containers.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    WillPopScope( onWillPop: () async{
      Navigator.pop(context);
      return false;
    },
    
    child: 
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
      body: 
      Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_ios,size: 15,),
                    Text("Report",style: TextStyle(fontWeight: FontWeight.bold),)
                 ],
                ),
              ),
              report_detail_container(),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text("Daily clock-in/out Log",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                daily_clock_container(),
                 Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text("Attendence",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 20,),
                public_optinal_cmpany_row(Firstcolor: Colorconstant.green, Secondcolor: Colorconstant.primaryred, Thirdcolor: Colorconstant.primaryblue,
                 firsttext: "Present", secondtext: "Absence", thirdtext: "Avg hrs"),
           SizedBox(height: 20,),
           Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
  child: SizedBox(
    height: 200,
    child: Linechartscreen(),
  ),
),
SizedBox(height: 10,)
],
          ),
        ),
      ),
    )
    );
  }
}


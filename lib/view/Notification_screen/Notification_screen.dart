import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/widgets/Custom_notification_container.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {
            Navigator.pop(context);
            
          }, icon: Icon(Icons.close))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Notifications",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            SizedBox(height: 20,),

            Custom_notification_container(title: "Missed Punch",
             titlecolor: Colorconstant.primaryred,
              message: "Missed clock-in Detected. please update your attendence or contact HR.",
               iconColor:Colorconstant.primaryred, 
               icon: Icons.close),
               SizedBox(height: 10,),

               Custom_notification_container(title: "Late Attendence",
                titlecolor:Colorconstant.primaryorange ,
                 message: "your running late! your clock-in time is beyond the scheduled shift start.",
                  iconColor: Colorconstant.primaryorange, 
                  icon: Icons.alarm),
                   SizedBox(height: 10,),

                   Custom_notification_container(title: "Daily Summary",
                    titlecolor: Colorconstant.darkblue ,
                     message: "Your attendence today: clock-in at 9:12 AM clock- out at 6:05 PM. Total hours:8:53.", 
                     iconColor:Colorconstant.darkblue , icon: Icons.date_range),
                    SizedBox(height: 10,),

                     Custom_notification_container(title: "Leave Approve", titlecolor: Colorconstant.green, message: "your request Leave for june 15 has been approved.Enjoy your day off!", iconColor: Colorconstant.green, icon: Icons.check_circle),
                    SizedBox(height: 10,),

                     Custom_notification_container(title: "Leave Rejection", titlecolor:  Colorconstant.primaryred, message: "Leave request declined. please check with your manager for details.", iconColor:  Colorconstant.primaryred, icon: Icons.remove_circle),
                    SizedBox(height: 10,),

                     Custom_notification_container(title: "Shift Update", titlecolor: Colorconstant.primaryblue, message: "Shift update New shift time is 10:00 AM-7:00 PM effective from june 14.", iconColor: Colorconstant.primaryblue, icon: Icons.note),
                    SizedBox(height: 10,),

          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

import 'package:login_register_screen_firebase/widgets/appbar_title.dart';
import 'package:login_register_screen_firebase/widgets/checkin_checkout_container.dart';
import 'package:login_register_screen_firebase/widgets/dashboard.dart';

import 'package:login_register_screen_firebase/widgets/ongoingbar_screen.dart';
import 'package:login_register_screen_firebase/widgets/overview_container.dart';
import 'package:login_register_screen_firebase/widgets/tabbar.dart';
import 'package:login_register_screen_firebase/widgets/tasktrackerbar_widget.dart';
import 'package:login_register_screen_firebase/widgets/tasktrakerbar_screen.dart';
import 'package:login_register_screen_firebase/widgets/worksummarybar_screen.dart';


class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
      child: Scaffold(
        appBar: AppBar(
  backgroundColor: Colors.white,
  elevation: 0,
  title: 
     appbar_title(),
     actions: [

    Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundColor: Colors.blue,
        child: Icon(Icons.notifications, color: Colors.white),
      ),
    ),
    SizedBox(width: 10),
  ],
),
 body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                CheckInCheckOutContainer(),
                 Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text("Overview",style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      over_view_container(),
                       SizedBox(height:10),
                tabbar(),
                SizedBox(height:10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sort by"),
                    Icon(Icons.radio_button_checked),
                  Text("Deadline"),
                     Icon(Icons.radio_button_checked),
                    Text("Project"),
                      Icon(Icons.radio_button_checked),
                      Icon(Icons.tune)
                    ],
                ),
                    SizedBox(
                        height: 300,
                         child: TabBarView(children: [
                          mytasktabbar(),
                          tasktrackerbar(),
                           ongoingtabbar(),
                            worksummarytabbar(),
                           ]),
                       ),
                   Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text("Dashboard",style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      dashboard(),
                      ],
            ),
          ),
        ),
      
      ),
    );
  }
}
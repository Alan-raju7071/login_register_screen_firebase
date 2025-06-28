import 'package:flutter/material.dart';
import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';
import 'package:login_register_screen_firebase/view/my_task_screen/my_task_screen.dart';
import 'package:login_register_screen_firebase/view/ongoing_screen/ongoing_screen.dart';
import 'package:login_register_screen_firebase/view/task_tracker_screeen/task_tracker_screen.dart';
import 'package:login_register_screen_firebase/view/work_summary_screen/work_summary_screen.dart';

class Tabbarscreen extends StatelessWidget {
  const Tabbarscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          tabAlignment: TabAlignment.start,
          isScrollable: true,
          unselectedLabelColor: Colors.black,
          labelColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
          labelStyle: const TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blue,
          ),
          dividerHeight: 0,
          tabs: const [
            Tab(child: Row(children: [Icon(Icons.date_range), SizedBox(width: 8), Text("My Task")])),
            Tab(child: Row(children: [Icon(Icons.hourglass_bottom), SizedBox(width: 8), Text("Task Tracker")])),
            Tab(child: Row(children: [Icon(Icons.restart_alt), SizedBox(width: 8), Text("Ongoing & Pending Task")])),
            Tab(child: Row(children: [Icon(Icons.folder), SizedBox(width: 8), Text("Working Summary")])),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("Sort by"),
            Icon(Icons.radio_button_checked),
            Text("Deadline"),
            Icon(Icons.radio_button_checked),
            Text("Project"),
            Icon(Icons.radio_button_checked),
            Icon(Icons.tune),
          ],
        ),
        SizedBox(height: 10),
        Expanded(
          child: AutoScaleTabBarView(
            children: const [
              MyTaskScreen(),
              TaskTrackerScreen(),
              OngoingScreen(),
              WorkSummaryScreen(),
            ],
          ),
        ),
      ],
    );
  }
}

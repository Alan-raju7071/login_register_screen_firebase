import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/widgets/attendence_status_container.dart';
import 'package:login_register_screen_firebase/widgets/custo_overview_container.dart';
import 'package:login_register_screen_firebase/widgets/custom_work_mode_container.dart';
import 'package:login_register_screen_firebase/widgets/fl_chart_card.dart';
import 'package:login_register_screen_firebase/widgets/overview_flchart_container.dart';

import 'package:table_calendar/table_calendar.dart';

class AttendenceCalenderScreen extends StatefulWidget {
  const AttendenceCalenderScreen({super.key});

  @override
  State<AttendenceCalenderScreen> createState() => _AttendenceCalenderScreenState();
}

class _AttendenceCalenderScreenState extends State<AttendenceCalenderScreen> {
  DateTime _focusedDay = DateTime.now();
  final List<DateTime> _selectedDays = [];

  @override
  Widget build(BuildContext context) {
    return WillPopScope( onWillPop: () async{
      Navigator.pop(context);
      return false;
      
    },child: 
    Scaffold(
      appBar: AppBar(title: Text("Attendance Calendar")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                calender_container(),
                 SizedBox(height: 10),
                 overview_piechart_container(),
                 SizedBox(height: 20,),
                 attendence_status_container(),
                 ],
            ),
          ),
        ),
      ),
    )
    );
  }


  

Material calender_container() {
  final List<int> greenDays = [9, 10, 16, 17];
  final int blueDay = 6;
  final int redDay = 28;
  final int orangeDay = 25;
return Material(
    elevation: 2,
    shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
    child: Container(
      height: 360,
      padding: EdgeInsets.all(10),
      child: TableCalendar(
        firstDay: DateTime.utc(2020, 1, 1),
        lastDay: DateTime.utc(2030, 12, 31),
        focusedDay: _focusedDay,
        selectedDayPredicate: (day) {
          return _selectedDays.any((d) => isSameDay(d, day));
        },
        onDaySelected: (selectedDay, focusedDay) {
          setState(() {
            _focusedDay = focusedDay;

            final existingIndex =
                _selectedDays.indexWhere((d) => isSameDay(d, selectedDay));
             if (existingIndex >= 0) {
              _selectedDays.removeAt(existingIndex);
            } else {
              _selectedDays.add(selectedDay);
            }
          });
        },
        calendarStyle: CalendarStyle(
          selectedDecoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
          todayDecoration: BoxDecoration(
            color: Colors.brown,
            shape: BoxShape.circle,
          ),
        ),
        calendarBuilders: CalendarBuilders(
          defaultBuilder: (context, day, focusedDay) {
            Color? bgColor;
           if (greenDays.contains(day.day)) {
              bgColor = Colors.green;
            } else if (day.day == blueDay) {
              bgColor = Colors.blue;
            } else if (day.day == redDay) {
              bgColor = Colors.red;
            } else if (day.day == orangeDay) {
              bgColor = Colors.orange;
            }
          if (bgColor != null) {
              return Container(
                height: 35,
                decoration: BoxDecoration(
                  color: bgColor,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Text(
                  '${day.day}',
                  style: TextStyle(color: Colors.white),
                ),
              );
            }
            return null; 
          },
        ),
      ),
    ),
  );
}

}


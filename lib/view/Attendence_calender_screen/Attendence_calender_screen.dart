import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/utulits/constant/image_constant.dart';
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
  String _getMonthName(int month) {
  const months = [
    'January', 'February', 'March', 'April', 'May', 'June',
    'July', 'August', 'September', 'October', 'November', 'December'
  ];
  return months[month - 1];
}


  @override
  Widget build(BuildContext context) {
    return WillPopScope( onWillPop: () async{
      Navigator.pop(context);
      return false;
      
    },child: 
    Scaffold(
      appBar: AppBar(elevation: 0,
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
        ],),
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


  

Widget calender_container() {
  final List<int> greenDays = [9, 10, 16, 17, 18];
  final int blueDay = 6;
  final int redDay = 24;
  final int orangeDay = 25;

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          
          border: Border.all(color: Colorconstant.darkgrey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios, size: 18),
              onPressed: () {
                setState(() {
                  _focusedDay = DateTime(_focusedDay.year, _focusedDay.month - 1);
                });
              },
            ),
            Text(
              '${_getMonthName(_focusedDay.month)} ${_focusedDay.year}',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward_ios, size: 18),
              onPressed: () {
                setState(() {
                  _focusedDay = DateTime(_focusedDay.year, _focusedDay.month + 1);
                });
              },
            ),
          ],
        ),
      ),

      
      Material(
        elevation: 2,
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colorconstant.darkgrey),
          ),
          height: 330,
          padding: const EdgeInsets.all(10),
          child: TableCalendar(
            headerVisible: false,
            firstDay: DateTime.utc(2020, 1, 1),
            lastDay: DateTime.utc(2030, 12, 31),
            focusedDay: _focusedDay,
            selectedDayPredicate: (day) => _selectedDays.any((d) => isSameDay(d, day)),
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _focusedDay = focusedDay;
                final existingIndex = _selectedDays.indexWhere((d) => isSameDay(d, selectedDay));
                if (existingIndex >= 0) {
                  _selectedDays.removeAt(existingIndex);
                } else {
                  _selectedDays.add(selectedDay);
                }
              });
            },
            calendarStyle: CalendarStyle(
              selectedDecoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              todayDecoration: const BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
              ),
              outsideDaysVisible: false,
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
                    width: 35,
                    decoration: BoxDecoration(
                      color: bgColor,
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      '${day.day}',
                      style: const TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  );
                }
                return null;
              },
              selectedBuilder: (context, date, focusedDay) {
                return Container(
                  height: 35,
                  width: 35,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '${date.day}',
                    style: const TextStyle(color: Colors.white, fontSize: 13),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    ],
  );
}
}
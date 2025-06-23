import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/widgets/custo_overview_container.dart';
import 'package:login_register_screen_firebase/widgets/fl_chart_card.dart';

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
    return Scaffold(
      appBar: AppBar(title: Text("Attendance Calendar")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Material(
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
                    
                          final existingIndex = _selectedDays.indexWhere(
                            (d) => isSameDay(d, selectedDay),
                          );
                    
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
                          color: Colors.orange,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ),
                 SizedBox(height: 10),
                 Material(
                  elevation: 2,
                  shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
                   child: Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text("overview",style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text("Total Days :30",style: TextStyle(
                            fontSize: 12,
                            
                          ),),
                          
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            custom_overview_container(textcolor: Colorconstant.darkgreen,texttitle: "Presence",textsubtitle: "20",),
                             SizedBox(width: 10,),
                            custom_overview_container(textcolor: Colorconstant.primaryred,texttitle: "Absence",textsubtitle: "03",),
                              SizedBox(width: 10,),
                            custom_overview_container(textcolor: Colorconstant.primaryorange,texttitle: "Leaves",textsubtitle: "02",),
                               SizedBox(width: 10,),
                            custom_overview_container(textcolor: Colorconstant.primaryblue,texttitle: "Late",textsubtitle: "6",),
                          ],
                        ),
                         SizedBox(height: 10,),
                  flChartcard()
                        
                      ],
                    ),
                   ),
                 ),
                 SizedBox(height: 20,)
                 
                 
            
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}



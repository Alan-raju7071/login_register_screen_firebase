import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/view/Attendence_calender_screen/Attendence_calender_screen.dart';
import 'package:login_register_screen_firebase/view/Bottomnavogation_screen/Bottomnavigation_screen.dart';
import 'package:login_register_screen_firebase/view/Holiday_list_screen/Holiday_list_screen.dart';
import 'package:login_register_screen_firebase/view/Leave_status_screen/Leave_status_screen.dart';
import 'package:login_register_screen_firebase/view/ReportScreen/Report_screen.dart';
import 'package:login_register_screen_firebase/view/leave_TabBar_Screen/leave_TabBar_Screen.dart';
import 'package:login_register_screen_firebase/view/leave_explain_screen/leave_explain_screen.dart';
import 'package:login_register_screen_firebase/view/payslip_screen/payslip_Screnn.dart';

class dashboard extends StatelessWidget {
  const dashboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
                
                children: [
                  Expanded(
                    child: Material(
                       elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      shadowColor: Colors.grey,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Bootomnavigationbarscreen.BottomNavigationScreen(selectedIndex: 0,overlayScreen: AttendenceCalenderScreen(),)));
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          
                          ),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: const Color.fromARGB(255, 226, 246, 227),
                                child: Icon(Icons.date_range_sharp,color:const Color.fromARGB(255, 6, 241, 14) ,)
                              ),
                               SizedBox(height: 10,),
                              Text("Attendence",style: TextStyle(
                                color: Colors.black,
                            
                            fontWeight: FontWeight.bold
                          ),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                   SizedBox(width: 20,),
                  Expanded(
                    child: Material(
                       elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      shadowColor: Colors.grey,
                      child: InkWell(
                         onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder:(context) => Bootomnavigationbarscreen.BottomNavigationScreen(selectedIndex: 0,overlayScreen: LeaveTabbarScreen(),) ));
                         },
                        child: Container(
                          padding: EdgeInsets.all(10),
                           decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            
                          ),
                          child: Column(
                            children: [
                                CircleAvatar(
                                radius: 20,
                                backgroundColor: const Color.fromARGB(255, 214, 186, 143),
                                child: Icon(Icons.exit_to_app,color: Colors.orange,)
                              ),
                               SizedBox(height: 10,),
                              Text("leaves",style: TextStyle(
                                color: Colors.black,
                            
                            fontWeight: FontWeight.bold
                          ),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Material(
                       elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      shadowColor: Colors.grey,
                      child: InkWell(
                        onTap: () {
                          Navigator .push(context, MaterialPageRoute(builder: (context) => Bootomnavigationbarscreen.BottomNavigationScreen(selectedIndex: 0,overlayScreen: LeaveStatusScreen(),),));
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                           decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            
                          ),
                          child: Column(
                            children: [
                                CircleAvatar(
                                radius: 20,
                                backgroundColor: const Color.fromARGB(255, 237, 171, 249),
                                child: Icon(Icons.star_outline_sharp,color: Colors.purple,)
                              ),
                              SizedBox(height: 10,),
                              Text("leave Status",style: TextStyle(
                                color: Colors.black,
                            
                            fontWeight: FontWeight.bold
                          ),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
 SizedBox(height: 20,),
    Row(
      
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Bootomnavigationbarscreen.BottomNavigationScreen(selectedIndex: 0,overlayScreen: HolidayListScreen(),),));
            },
            child: Material(
               elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              shadowColor: Colors.grey,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  
                ),
                child: Column(
                  children: [
                      CircleAvatar(
                      radius: 20,
                      backgroundColor: const Color.fromARGB(255, 196, 214, 245),
                      child: Icon(Icons.list,color: Colors.blue,)
                    ),
                    SizedBox(height: 10,),
                    Text("Holiday List",style: TextStyle(
                      color: Colors.black,
                                        
                                        fontWeight: FontWeight.bold
                                      ),),
                  ],
                ),
              ),
            ),
          ),
        ),
         SizedBox(width: 20,),
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Bootomnavigationbarscreen.BottomNavigationScreen(selectedIndex: 0,overlayScreen: PayslipScrenn(),),));
            },
            child: Material(
               elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              shadowColor: Colors.grey,
              child: Container(
                padding: EdgeInsets.all(10),
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  
                ),
                child: Column(
                  children: [
                      CircleAvatar(
                      radius: 20,
                       backgroundColor: const Color.fromARGB(255, 226, 246, 227),
                      child: Icon(Icons.payment,color: const Color.fromARGB(255, 1, 241, 9),)
                    ),
                    SizedBox(height: 10,),
                    Text("payslip",style: TextStyle(
                      color: Colors.black,
                                        
                                        fontWeight: FontWeight.bold
                                      ),),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 20,),
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Bootomnavigationbarscreen.BottomNavigationScreen(selectedIndex: 0,overlayScreen: ReportScreen(),),));
            },
            child: Material(
               elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              shadowColor: Colors.grey,
              child: Container(
                padding: EdgeInsets.all(10),
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  
                ),
                child: Column(
                  children: [
                      CircleAvatar(
                      radius: 20,
                      backgroundColor: const Color.fromARGB(255, 206, 166, 163),
                      child: Icon(Icons.auto_graph,color: Colors.redAccent,)
                    ),
                    SizedBox(height: 10,),
                    Text("Reports",style: TextStyle(
                      color: Colors.black,
                                        
                                        fontWeight: FontWeight.bold
                                      ),),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    )
     ],
    );
  }
}























import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/utulits/constant/image_constant.dart';
import 'package:login_register_screen_firebase/widgets/custom_date_container.dart';
import 'package:login_register_screen_firebase/widgets/custom_static_calender.dart';

class HolidayListScreen extends StatelessWidget {
  const HolidayListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Column(
          children: [
            Row(
                        children: [
                          Expanded(
             child: Material(
               elevation: 2,
               shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
               child: Container(
                  
                 padding: EdgeInsets.all(10),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Row(
                       children: [
                         Text("Total \nHolidays",style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 14
                         ),),
                         
                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 10),
                           child: Icon(Icons.receipt_long,color: Colorconstant.primaryblue,),
                         )
                       ],
                     ),
                     
                     Padding(
                       padding: const EdgeInsets.symmetric(vertical: 15),
                       child: Text("18 days",style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 20
                           ),),
                     ),
                     
                     Text("in a year",style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 12
                         ),),
                         SizedBox(height: 2),
                         SizedBox(
                           width: 150,
                           child: LinearProgressIndicator(
                             
                             minHeight: 6,
                             
                             
                             borderRadius: BorderRadius.circular(10),
                                                 value: 35 / 45, 
                                                 backgroundColor: Colorconstant.lightblue,
                                                 valueColor: AlwaysStoppedAnimation<Color>(Colorconstant.primaryblue),
                                               ),
                         ),
               
                     
               
                   ],
                 ),
               ),
             ),
                          ),
            SizedBox(width: 10),
                          Expanded(
             child: Material(
               elevation: 2,
               shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
               child: Container(
                 
                 padding: EdgeInsets.all(10),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Row(
                       children: [
                         Text("Upcoming \nHolidays",style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 14
                         ),),
                         
                        Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 10),
                           child: Icon(Icons.disc_full_outlined,color: Colorconstant.primaryblue,),
                         )
                       ],
                     ),
                     
                     Padding(
                       padding: const EdgeInsets.symmetric(vertical: 15),
                       child: Row(
                         children: [
                           Text("4",style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 20
                               ),),
                               Text("()")
                         ],
                       ),
                     ),
                     
                     Text("29 days remaining this year",style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 12
                         ),),
                     
               
                   ],
                 ),
               ),
             ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Container(
                              height: 15,
                              width: 15,
                              color: Colorconstant.green,
                            ),
                          ),
                          Text("Public"),
                          SizedBox(width: 10,),
                                                    Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Container(
                              height: 15,
                              width: 15,
                              color: Colorconstant.primaryyellow
                            ),
                          ),
                          Text("Optional"),
                          SizedBox(width: 10,),
                                                    Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Container(
                              height: 15,
                              width: 15,
                              color: Colorconstant.primaryblue,
                            ),
                          ),
                          Text("Company"),
                          SizedBox(width: 10,)
                          
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                   width: 40, 
                                    height: 40, 
                                  child: Center(
                                    child: Text("Sun",style: TextStyle(
                                      color: Colorconstant.primaryred
                                    ),),
                                  ),
                                ),
                                Container(
                                   width: 40, 
                                   height: 40, 
                                  child: Center(child: Text("Mon"))),
                                Container(
                                   width: 40, 
                                   height: 40, 
                                  child: Center(child: Text("Tue"))),
                                Container(
                                   width: 40, 
                                   height: 40, 
                                  child: Center(child: Text("Wed"))),
                                Container(
                                   width: 40, 
                                   height: 40, 
                                  child: Center(child: Text("thu"))),
                                Container(
                                   width: 40, 
                                   height: 40, 
                                  child: Center(child: Text("Fri"))),
                                Container(
                                   width: 40, 
                                   height: 40, 
                                  child: Center(child: Text("Sat"))),
                              ],
                            ),
                            Text("June 2025",style: TextStyle(fontWeight: FontWeight.bold),),
                            
                               custom_static_calender(),

                          ],
                        ),
                      )
        
          ],
        ),
      ),
    );
  }
}


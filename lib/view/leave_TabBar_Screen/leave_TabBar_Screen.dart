import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/utulits/constant/image_constant.dart';
import 'package:login_register_screen_firebase/view/Request_leaveDetails_screen/Request_leaveDetails_screen.dart';
import 'package:login_register_screen_firebase/view/leave_explain_screen/leave_explain_screen.dart';

class LeaveTabbarScreen extends StatelessWidget {
  const LeaveTabbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(5),
            child: CircleAvatar(
                                
                   radius: 22,
            backgroundImage: NetworkImage(ImageConst.appbarimage ),
                 ),
          ),
               title: InkWell(
                onTap: () {
                  
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Search",
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) =>  Align(
        alignment: Alignment.topCenter,
        child: Material(
          borderRadius: BorderRadius.circular(16),
          child: Container(
            margin: const EdgeInsets.only(top: 40),
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios)),
                    Text(
                      "05 May 2025",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width*1/2-50,),
                    Card(
                      color: Colorconstant.darkgreen,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 2),
                          child: Icon(Icons.send, color: Colors.white),
                        )),
                  ],
                ),
                 SizedBox(height: 10),
                
                 Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Search History",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                ),
                 SizedBox(height: 10),
                Text("sick leave..."),
                 SizedBox(height: 8),
                Text("23 May 2025..."),
                const SizedBox(height: 8),
                Text("sasual leaves.."),
              ],
            ),
          ),
        ),
      ),
      transitionBuilder: (_, anim, __, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, -1),
            end: Offset.zero,
          ).animate(anim),
          child: child,
        );
      },
    );
  },
                  
       
                
                
                 child: Material(
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
        body: Column(
          children: [
            leaveTabBar(),
            Expanded(
              child: TabBarView(children: [
                RequestLeavedetailsScreen(),
                LeaveExplainScreen(),
                
              ]),
            )
          ],
        ),
        
      ),
    );
  }
}

class leaveTabBar extends StatelessWidget {
  const leaveTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colorconstant.lightgrey, 
            
            borderRadius: BorderRadius.circular(10)
          ),
          child: TabBar(
             unselectedLabelColor: Colorconstant.primaryblack,
             
             unselectedLabelStyle: TextStyle(
               fontWeight: FontWeight.normal,
             ),
              indicatorSize: TabBarIndicatorSize.tab,
              labelStyle: TextStyle(
               fontWeight: FontWeight.bold,
              ),
              labelColor: Colorconstant.primaryblue,
               indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color:Colorconstant.lightgrey,
                 ),
              dividerHeight: 0,
              tabs:[
              Tab(
                child: Row(children: [
                  Icon(Icons.dashboard_outlined),
                  SizedBox(width: 8),
        Text("Dashboard"),
                ],),
              ),
               Tab(
                child: Row(children: [
                  Icon(Icons.receipt_long),
                  SizedBox(width: 8),
        Text("Request Leave"),
                ],),
              )
            ]),
        ),
          
           
      ]  
    );
  }
}
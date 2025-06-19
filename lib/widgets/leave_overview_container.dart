import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';

class leave_overview_container extends StatelessWidget {
  const leave_overview_container({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Container(
        padding: EdgeInsets.all(10),
         height: 250,
       width: double.infinity,
            
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Leave Overview",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),),
            Text("Your leave distribution for the current year",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12
                      ),),
                      SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                   color: Colorconstant.primaryblue,
                                ),
                                height: 40,
                                width: 90,
                                
                              ),
                              Text("Q1")
                            ],
                          ),
                           Column(
                             children: [
                               Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                   color: Colorconstant.primaryblue,
                                ),
                                height: 30,
                                 width: 90,
                               
                                ),
                              Text("Q2")
            
                             ],
                           ),
                           Column(
                             children: [
                               Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                   color: Colorconstant.primaryblue,
                                ),
                                height: 20,
                                 width: 90,
                                
                                 ),
                               Text("Q3")
                             ],
                           ),
                           Column(
                            
                             children: [
                               Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                   color: Colorconstant.primaryblue,
                                ),
                                height: 13,
                                 width: 90,
                                
                             ),
                              Text("Q4")
                             ],
                           ),
            
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          
                          CircleAvatar(
                            radius: 5,
                            backgroundColor:  Colorconstant.primaryblue,
                          ),
                          SizedBox(width: 10,),
                          Text("Leave Days Taken",style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 13
                          ),)
                        ],
                      ),
                      Divider(),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Total Days",style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colorconstant.darkgrey,
                                fontSize: 12
                              ),),
                              Text("20",style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12
                              ),)
                            ],
                          ),
                          Spacer(),
                           Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Remaining",style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colorconstant.darkgrey,
                                fontSize: 12
                              ),),
                              Text("29",style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12
                              ),)
                            ],
                          )
                        ],
                      )
            
          ],
        ),
      
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/widgets/custom_static_calender.dart';

class calender_and_details_container extends StatelessWidget {
  const calender_and_details_container({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                child: Center(child: Text("Thu"))),
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
             SizedBox(height: 10,),
             Row(
              children: [
                Expanded(
                  child: Material(
                    elevation: 2,
                    
                    child: Container(
                      width: double.infinity,
                       padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          children: [
                            Text("Date",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colorconstant.primaryblue
                            ),),
                            Spacer(),
                            Text("17 june")
                          ],
                          
                        ),
                      ),
                    ),
                  ),
                ),
                
                 Expanded(
                   child: Material(
                    elevation: 2,
                    
                    child: Container(
                      width: double.infinity,
                       padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          children: [
                            Text("15 August"),
                            Spacer(),
                            Text("23 October")
                          ],
                          
                        ),
                      ),
                    ),
                                                       ),
                 )
                
                
                 
              ],
             ),
             SizedBox(height: 1,),
              Row(
              children: [
                Expanded(
                  child: Material(
                    elevation: 2,
                    
                    child: Container(
                      width: double.infinity,
                       padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          children: [
                            Text("Day",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colorconstant.primaryblue
                            ),),
                            Spacer(),
                            Text("Tuesday")
                          ],
                          
                        ),
                      ),
                    ),
                  ),
                ),
                 Expanded(
                   child: Material(
                    elevation: 2,
                    
                    child: Container(
                      width: double.infinity,
                       padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          children: [
                            Text("Thuesday"),
                            Spacer(),
                            Text("Wednesday")
                          ],
                          
                        ),
                      ),
                    ),
                                                       ),
                 )
                
                
                 
              ],
             ),
              SizedBox(height: 1,),
             Row(
              children: [
                Expanded(
                  child: Material(
                    elevation: 2,
                    
                    child: Container(
                      width: double.infinity,
                       padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          children: [
                            Text("Holiday \nName",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colorconstant.primaryblue
                            ),),
                            Spacer(),
                            Text("Bakrid")
                          ],
                          
                        ),
                      ),
                    ),
                  ),
                ),
                 Expanded(
                   child: Material(
                    elevation: 2,
                    
                    child: Container(
                      width: double.infinity,
                       padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          children: [
                            Text("independence\nDay"),
                            Spacer(),
                            Text("Diwali")
                          ],
                          
                        ),
                      ),
                    ),
                                                       ),
                 )
                
                
                 
              ],
             ),
              
             Row(
              children: [
                Expanded(
                  child: Material(
                    elevation: 2,
                    
                    child: Container(
                      width: double.infinity,
                       padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          children: [
                            Text("Type",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colorconstant.primaryblue
                            ),),
                            Spacer(),
                            Text("public\nHoliday")
                          ],
                          
                        ),
                      ),
                    ),
                  ),
                ),
                 Expanded(
                   child: Material(
                    elevation: 2,
                    
                    child: Container(
                      width: double.infinity,
                       padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          children: [
                            Text("National \nHoliday"),
                            Spacer(),
                            Text("Optional")
                          ],
                          
                        ),
                      ),
                    ),
                                                       ),
                 )
                
                
                 
              ],
             ),
              SizedBox(height: 1,),
             Row(
              children: [
                Expanded(
                  child: Material(
                    elevation: 2,
                    
                    child: Container(
                      width: double.infinity,
                       padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          children: [
                            Text("Note",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colorconstant.primaryblue
                            ),),
                            Spacer(),
                            Text("Company\nHoliday")
                          ],
                          
                        ),
                      ),
                    ),
                  ),
                ),
                 Expanded(
                   child: Material(
                    elevation: 2,
                    
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          children: [
                            Text("paid \nLeave"),
                            Spacer(),
                            Text("Can be applied")
                          ],
                          
                        ),
                      ),
                    ),
                                                       ),
                 )
                
                
                 
              ],
             ),
             SizedBox(height: 10,)
              
              
              
              
        ],
      ),
    );
  }
}


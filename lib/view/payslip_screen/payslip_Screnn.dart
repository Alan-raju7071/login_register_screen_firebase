import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/utulits/constant/image_constant.dart';
import 'package:login_register_screen_firebase/utulits/constant/text_constant.dart';

class PayslipScrenn extends StatelessWidget {
  const PayslipScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope( onWillPop: ()async {
      Navigator.pop(context);
      return false;
      
    },child:
     Scaffold(
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:AssetImage("assets/image/logos.png")
                                                  ),
                                                  SizedBox(width: 10,),
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Ziya Academy",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colorconstant.primaryblue),),
                                                      Text("Key-To-Success",style: TextStyle(fontWeight: FontWeight.bold,color: Colorconstant.dark22green),)
                                                    ],
                                                  )

                        
                      ],
                    ),
                    
                  ),
                  Spacer(),
                  Column(
                          children: [
                            Text("payslip for the month",style: TextStyle(fontSize: 12,color: Colorconstant.darkgrey),),
                            Text("June 2025",style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        )
                ],
              ),
              Divider(),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("EMPLOYEE SUMMARY",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
          
                      ),),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(children: [
                          Text("Employee Name   : ",style: TextStyle(color: Colorconstant.darkgrey),),
                          Text(  TextConstant.username,style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),)
                        ],),
                      ),
                       Row(children: [
                        Text("Designation          : ",style: TextStyle(color: Colorconstant.darkgrey),),
                        Text(TextConstant.userdesi,style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),)
                      ],),
                       Padding(
                         padding: const EdgeInsets.symmetric(vertical: 5),
                         child: Row(children: [
                          Text("Employee ID         : ",style: TextStyle(color: Colorconstant.darkgrey),),
                          Text(TextConstant.userID,style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),)
                                             ],),
                       ),
                       Row(children: [
                        Text("Date of Joining    : ",style: TextStyle(color: Colorconstant.darkgrey),),
                        Text(TextConstant.userdate,style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),)
                      ],), Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(children: [
                          Text("Pay Period            : ",style: TextStyle(color: Colorconstant.darkgrey),),
                          Text(TextConstant.userpayperiod,style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),)
                        ],),
                      ),
                       Row(children: [
                        Text("Pay Date               : ",style: TextStyle(color: Colorconstant.darkgrey),),
                        Text(TextConstant.userpaydate,style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),)
                      ],)
                    ],
                  ),
                  SizedBox(width: 20,),
                  Container(
                    height: 140,
                    width: 180,
                    
                    decoration: BoxDecoration(
                      border: Border.all(color: Colorconstant.darkgrey),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colorconstant.lightgreen,
                              borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))
                            ),
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: [
                                
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colorconstant.green,
                                      borderRadius: BorderRadius.circular(5)
                                    ),
                                    
                                    height: double.infinity,
                                    width: 3,
                                  ),
                                ),
                                
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("₹ 45,000",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                    Text("Employee Net Pay",style: TextStyle(fontSize: 12,color: Colorconstant.darkgrey),),
                                    Divider()
                                  ],
                                )
                              ],
                            ),
                            
                          ),
                        ),
                        
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text("Paid  Days   :",style: TextStyle(
                                      color: Colorconstant.darkgrey
                                    ),),
                                    Text("   31",style: TextStyle(
                                      color: Colorconstant.darkgrey
                                    ),)
                                  ],
                                ),
                                 Row(
                                  children: [
                                    Text("Lop Days     :",style: TextStyle(
                                      color: Colorconstant.darkgrey
                                    ),),
                                    Text("   0",style: TextStyle(
                                      color: Colorconstant.darkgrey
                                    ),)
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Divider(),
              Row(
                children: [
                  Text("PF A/C Number :",style: TextStyle(
                                      color: Colorconstant.darkgrey
                                    ),),
                   Text(TextConstant.userAccountno,style: TextStyle(fontWeight: FontWeight.bold),),
                   SizedBox(width: 20,),
                    Text("UAN   :",style: TextStyle(
                                      color: Colorconstant.darkgrey
                                    ),),
                     Text(TextConstant.userUAN,style: TextStyle(fontWeight: FontWeight.bold),),
          
                ],
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(border: Border.all(color: Colorconstant.darkgrey,
                
                ),
                borderRadius: BorderRadius.circular(10)),
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        
                        children: [
                      Container(
                         width: 60,
                        child: Center(child: Text("EARNINGS",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                      
                      ),
                      SizedBox(width: 5,),
                      Container(
                         width: 60,
                        child: Center(child: Text("AMOUNT",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                        
                      ),
                       SizedBox(width: 5,),
                      Container(
                         width: 65,
                        child: Center(child: Text("YTD",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                        
                      ),
                       SizedBox(width: 5,),
                      Container(
                         width: 95,
                        child: Center(child: Text("DEDUCATIONS",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                        
                      ),
                       SizedBox(width: 5,),
                      Container(
                         width: 60,
                        child: Center(child: Text("AMOUNT",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                        
                      ),
                       SizedBox(width: 5,),
                      Container(
                        width: 60,
                        child: Center(child: Text("YTD",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                        
                      )
                      ],
                      ),
                    ),
                     SizedBox(height: 15,),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 10),
                       child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        
                        
                        children: [
                                         Container(
                        width: 60,
                        child: Text("Basic",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                       
                                         ),
                       SizedBox(width: 5,),
                                        
                                         Container(
                        
                        width: 60,
                        child: Center(child: Text("₹25,000",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                        
                                         ),
                       SizedBox(width: 5,),
                                         
                                         Container(
                        width: 65,
                        child: Center(child: Text("₹3,00,000",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                        
                                         ),
                       SizedBox(width: 5,),
                                         Container(
                        width: 95,
                        
                        child: Center(child: Text("PF Deducation",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                        
                                         ),
                       SizedBox(width: 5,),
                                         Container(
                         width: 60,
                        child: Center(child: Text("₹2,500",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                        
                                         ),
                       SizedBox(width: 5,),
                                         Container(
                        width: 60,
                        child: Center(child: Text("₹30,000",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                        
                                         )
                                         ],
                                         ),
                     ),
                     SizedBox(height: 15,),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 10),
                       child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        
                        
                        children: [
                                         Container(
                        width: 60,
                        child: Text("HRA",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                       
                                         ),
                       SizedBox(width: 5,),
                                        
                                         Container(
                                         
                        width: 60,
                        child: Center(child: Text("₹10,000",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                        
                                         ),
                       SizedBox(width: 5,),
                                         Container(
                        width: 65,
                        child: Center(child: Text("₹1,20,000",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                        
                                         ),
                       SizedBox(width: 5,),
                                         Container(
                        width: 100,
                        
                        child: Center(child: Text("Tax Deducation",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                        
                                         ),
                       SizedBox(width: 5,),
                                         Container(
                         width: 60,
                        child: Center(child: Text("₹7,500",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                        
                                         ),
                       SizedBox(width: 5,),
                                         Container(
                        width: 60,
                        child: Center(child: Text("₹90,000",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                        
                                         )
                                         ],
                                         ),
                     ),
                     SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        
                        
                        children: [
                      Container(
                        width: 60,
                        child: Text("Travel\nallowace",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                      
                      ),
                       SizedBox(width: 5,),
                                       
                      Container(
                        
                        width: 60,
                        child: Center(child: Text("₹3,000",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                        
                      ),
                       SizedBox(width: 5,),
                      Container(
                        width: 65,
                        child: Center(child: Text("₹36,000",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                        
                      ),
                       SizedBox(width: 5,),
                      Container(
                        width: 95,
                        
                        child: Center(child: Text("")),
                        
                      ),
                       SizedBox(width: 5,),
                      Container(
                         width: 60,
                        child: Center(child: Text("")),
                        
                      ),
                       SizedBox(width: 5,),
                      Container(
                        width: 60,
                        child: Center(child: Text("")),
                        
                      )
                      ],
                      ),
                    ),
                    SizedBox(height: 15,),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 10),
                       child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        
                        
                        children: [
                                         Container(
                        width: 65,
                        child: Center(child: Text("Meal/Other\nallowace",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                       
                                         ),
                       SizedBox(width: 5,),
                                        
                                         Container(
                        
                        width: 60,
                        child: Center(child: Text("₹2,000",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                        
                                         ),
                       SizedBox(width: 5,),
                                         Container(
                        width: 60,
                        child: Center(child: Text("₹24,000",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                        
                                         ),
                       SizedBox(width: 5,),
                                         Container(
                        width: 95,
                        
                        child: Center(child: Text("")),
                        
                                         ),
                       SizedBox(width: 5,),
                                         Container(
                         width: 60,
                        child: Center(child: Text("")),
                        
                                         ),
                       SizedBox(width: 5,),
                                         Container(
                        width: 60,
                        child: Center(child: Text("")),
                        
                                         )
                                         ],
                                         ),
                     ),
                    SizedBox(height: 15,),
                    Container(
                      padding: EdgeInsets.all(5),
                     decoration: BoxDecoration(
                       color: Colorconstant.lightblue,
                       borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10))
                     ),
                      width: double.infinity,
                      child: Row(
                        children: [
                          Container(
                            width: 65,
                            
                            
                            child: Text("Gross \nEarnings",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
                            SizedBox(width: 5,),
                          Container(
                            width: 60,
                            child: Center(child: Text("₹55,000",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),))),
                            SizedBox(width: 65,),
                            Container(
                              width: 65,
                              child: Center(child: Text("Total Deduction",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),))),
                              SizedBox(width: 40,),
                              Container(
                      width: 60,
                      child: Center(child: Center(child: Text("₹45,000",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),))),
                      
                    )
          
          
          
                        ],
                      ),
                    )
          
                  ],
                )
              ),
              SizedBox(height: 5,),
              Container(
                height: 60,
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colorconstant.darkgrey)
          
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Total Net Payable",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                          Text("Gross Earning-Total Deductions")
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Colorconstant.lightgreen,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      
                      width: 150,
                      padding: EdgeInsets.all(5),
                      
                      child: Center(child: Text("₹45,000",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                    )
                  ],
                ),
          
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Amount in Words:   ",style: TextStyle(fontSize: 12,),),
                  Text("Indian Rupee Forty-Five thousand Only",style: TextStyle(fontSize: 12,),)
          
                ],
              ),
               SizedBox(height: 20,),
              Divider(),
              Center(
                child: Text(
                  "This document has been automaticaly generated by Ziya Academy",style: TextStyle(fontSize: 12,color: Colorconstant.darkgrey,),),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                 decoration: BoxDecoration(
                   color: Colorconstant.primaryblue,
                   borderRadius: BorderRadius.circular(10)
                 ),
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  child: Center(child: Text("Download the sample salary slip format for PDF",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colorconstant.primarywhite),)),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  
                  Text("Monthly payslip History",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),
                ],
              ),
               SizedBox(height: 10,),
               Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colorconstant.darkgrey)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Month"),
                      
                        Text("May 2025"),
                    
                        Text("april 2025"),
                        
                        Text("Marth 2025")

                      ],
                    ),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Net Pay"),
                      
                        Text("₹45,000"),
                        
                        Text("₹43,000"),
                         
                        Text("₹41,000")

                      ],
                    ),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("status"),
                      
                        Row(
                          children: [
                            Icon(Icons.check_box,color: Colorconstant.green,),
                            Text("Generated"),
                          ],
                        ),
                    
                        Row(
                          children: [
                             Icon(Icons.check_box,color: Colorconstant.green,),
                            Text("Generated"),
                          ],
                        ),
                      
                        Row(
                          children: [
                             Icon(Icons.check_box,color: Colorconstant.green,),
                            Text("Generated"),
                          ],
                        )

                      ],
                    ),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Action"),
                        Row(
                          children: [
                            Icon(Icons.arrow_drop_down,color: Colorconstant.primaryblue,),
                            Text("Download"),
                          ],
                        ),
                        Row(
                          children: [
                              Icon(Icons.arrow_drop_down,color: Colorconstant.primaryblue,),
                            Text("Download"),
                          ],
                        ),
                        Row(
                          children: [
                              Icon(Icons.arrow_drop_down,color: Colorconstant.primaryblue,),
                            Text("Download"),
                          ],
                        )

                      ],
                    )

                  ],
                ),
               )
                
            ],
          ),
        ),
      ),
     )
    );
  }
}
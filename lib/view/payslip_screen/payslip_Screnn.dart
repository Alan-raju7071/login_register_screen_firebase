import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/utulits/constant/image_constant.dart';
import 'package:login_register_screen_firebase/utulits/constant/text_constant.dart';

class PayslipScrenn extends StatelessWidget {
  const PayslipScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage:
                        
                         NetworkImage(ImageConst.appbarimage),
                      ),
                      
                    ],
                  ),
                ),Column(
                        children: [
                          Text("payslip for the month"),
                          Text("June 2025")
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
              padding: EdgeInsets.all(10),
              child: Column(
                
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Container(
                    child: Text("EARNINGS"),

                  ),
                  Container(
                    child: Text("AMOUNT"),
                    
                  ),
                  Container(
                    child: Text("YTD"),
                    
                  ),
                  Container(
                    child: Text("DEDUCATIONS"),
                    
                  ),
                  Container(
                    child: Text("AMOUNT"),
                    
                  ),
                  Container(
                    child: Text("YTD"),
                    
                  )
                  ],
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Container(
                    child: Text("EARNINGS"),

                  ),
                  Container(
                    child: Text("AMOUNT"),
                    
                  ),
                  Container(
                    child: Text("YTD"),
                    
                  ),
                  Container(
                    child: Text("DEDUCATIONS"),
                    
                  ),
                  Container(
                    child: Text("AMOUNT"),
                    
                  ),
                  Container(
                    child: Text("YTD"),
                    
                  )
                  ],
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Container(
                    child: Text("EARNINGS"),

                  ),
                  Container(
                    child: Text("AMOUNT"),
                    
                  ),
                  Container(
                    child: Text("YTD"),
                    
                  ),
                  Container(
                    child: Text("DEDUCATIONS"),
                    
                  ),
                  Container(
                    child: Text("AMOUNT"),
                    
                  ),
                  Container(
                    child: Text("YTD"),
                    
                  )
                  ],
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Container(
                    child: Text("EARNINGS"),

                  ),
                  Container(
                    child: Text("AMOUNT"),
                    
                  ),
                  Container(
                    child: Text("YTD"),
                    
                  ),
                  Container(
                    child: Text("DEDUCATIONS"),
                    
                  ),
                  Container(
                    child: Text("AMOUNT"),
                    
                  ),
                  Container(
                    child: Text("YTD"),
                    
                  )
                  ],
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Container(
                    child: Text("EARNINGS"),

                  ),
                  Container(
                    child: Text("AMOUNT"),
                    
                  ),
                  Container(
                    child: Text("YTD"),
                    
                  ),
                  Container(
                    child: Text("DEDUCATIONS"),
                    
                  ),
                  Container(
                    child: Text("AMOUNT"),
                    
                  ),
                  Container(
                    child: Text("YTD"),
                    
                  )
                  ],
                  ),

                ],
              )
            )
      
          ],
        ),
      ),
    );
  }
}
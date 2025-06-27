import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';

class EarningAmount_container extends StatelessWidget {
  final String selectedMoney;
  const EarningAmount_container({
    super.key, required this.selectedMoney
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: Center(child: Center(child: Text(selectedMoney,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),))),
            
          )
              
              
              
              ],
            ),
          )
              
        ],
      )
    );
  }
}


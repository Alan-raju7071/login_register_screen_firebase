import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';

class report_detail_container extends StatelessWidget {
  const report_detail_container({
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
            shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: Container(
                    
                    height: 141,
                   padding: EdgeInsets.all(10),
                   child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Total Working \ndays",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14
              ),),
              Spacer(),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Icon(Icons.calendar_today_outlined,color: Colorconstant.primaryblue,size: 20,),
              )
            ],
          ),
           Text("(This month)"),
          
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text("22 days",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),
          ),
          
          
              SizedBox(height: 2),
             
            
          
            
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
                   height: 141,
                   
                   padding: EdgeInsets.all(10),
                   child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Total Hours \nWorked",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14
              ),),
               Spacer(),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Icon(Icons.hourglass_empty_outlined,color: Colorconstant.primaryblue,size: 20,),
              )
            ],
          ),
          SizedBox(height: 20,),
          
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text("145 hrs",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),
          ),
          
          
              SizedBox(height: 2),
             
            
          
            
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
           Expanded(
      child: Material(
        elevation: 2,
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Container(
               height: 141,
                
               padding: EdgeInsets.all(10),
               child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Text("Tasks \ncompleted",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14
          ),),
           Spacer(),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.check_circle_outline,color: Colorconstant.primaryblue,size: 20,),
          )
        ],
      ),
      
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: [
            Text("35 ",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),
                SizedBox(width: 10,),
                Text("this month",style: TextStyle(fontSize: 12),)
          ],
        ),
      ),
      
      
          SizedBox(height: 2),
         
        
      
        
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
               height: 141,
               
               padding: EdgeInsets.all(10),
               child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Text("Average\nDaily Hours",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14
          ),),
           Spacer(),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.alarm_on_outlined,color: Colorconstant.primaryblue,size: 20,),
          )
        ],
      ),
      
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: [
            Text("22 days",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),
                SizedBox(width: 10,),
                Text("hrs/day",style: TextStyle(fontSize: 12),)
          ],
        ),
      ),
      
      
          SizedBox(height: 2),
         
        
      
        
    ],
               ),
        ),
      ),
           ),
         ],
       ),
       ],
    );
  }
}
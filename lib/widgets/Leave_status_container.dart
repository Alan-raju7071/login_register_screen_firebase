import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';

class leave_status_container extends StatelessWidget {
  const leave_status_container({
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
                    height: 145,
        
                     padding: EdgeInsets.all(10),
                     child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Row(
             children: [
               Text(" Leave Taken",style: TextStyle(
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
             child: Text("16 days",style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 20
                 ),),
           ),
           
           Text("10 days remaining this month",style: TextStyle(
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
                     height: 145,
                     
                     padding: EdgeInsets.all(10),
                     child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Row(
             children: [
               Text("Leave Balance",style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 14
               ),),
               
              Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 10),
                 child: Icon(Icons.calendar_today_outlined,color: Colorconstant.primaryblue,),
               )
             ],
           ),
           
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 15),
             child: Row(
               children: [
                 Text("8 days",style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 20
                     ),),
                     SizedBox(width: 10,),
                    
               ],
             ),
           ),
           
           Text("29 days remaining this month",style: TextStyle(
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
     
         SizedBox(height: 10),
        Row(
          children: [
            Expanded(
     child: Material(
               elevation: 2,
               shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
               child: Container(
                 height: 145,
    
                 padding: EdgeInsets.all(10),
                 child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       Row(
         children: [
           Text("Pending Request",style: TextStyle(
             fontWeight: FontWeight.bold,
             fontSize: 14
           ),),
           
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 10),
             child: Icon(Icons.hourglass_empty_outlined,color:Colorconstant.primaryblue,),
           )
         ],
       ),
       
       Padding(
         padding: const EdgeInsets.symmetric(vertical: 15),
         child: Text("1 request",style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 20
             ),),
       ),
       
       Text("29 days remaining this month",style: TextStyle(
             fontWeight: FontWeight.bold,
             fontSize: 12
           ),),
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
                 height: 145,
                 
                 padding: EdgeInsets.all(10),
                 child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       Row(
         children: [
           Text("Approved Leaves",style: TextStyle(
             fontWeight: FontWeight.bold,
             fontSize: 14
           ),),
           
          Padding(
             padding: const EdgeInsets.symmetric(horizontal: 10),
             child: Icon(Icons.check_circle_outline,color: Colorconstant.primaryblue,),
           )
         ],
       ),
       
       Padding(
         padding: const EdgeInsets.symmetric(vertical: 15),
         child: Row(
           children: [
             Text("5 Leaves",style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 20
                 ),),
                 
           ],
         ),
       ),
       
       Text("29 days remaining this month",style: TextStyle(
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
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(
     child: Material(
               elevation: 2,
               shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
               child: Container(
                 height: 145,
    
                 padding: EdgeInsets.all(10),
                 child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       Row(
         children: [
           Text("Rejected Leaves",style: TextStyle(
             fontWeight: FontWeight.bold,
             fontSize: 14
           ),),
           
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 10),
             child: Icon(Icons.close_rounded,color: Colorconstant.primaryblue,),
           )
         ],
       ),
       
       Padding(
         padding: const EdgeInsets.symmetric(vertical: 15),
         child: Text("2 Leaves",style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 20
             ),),
       ),
       
       Text("29 days remaining this month",style: TextStyle(
             fontWeight: FontWeight.bold,
             fontSize: 12
           ),),
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
                 height: 145,
                 
                 padding: EdgeInsets.all(10),
                 child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       Row(
         children: [
           Text("Upcoming Leaves",style: TextStyle(
             fontWeight: FontWeight.bold,
             fontSize: 14
           ),),
           
          Padding(
             padding: const EdgeInsets.symmetric(horizontal: 10),
             child: Icon(Icons.calendar_today_outlined,color: Colorconstant.primaryblue,),
           )
         ],
       ),
       
       Padding(
         padding: const EdgeInsets.symmetric(vertical: 9),
         child: Column(
           children: [
             Text("1 Leaves",style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 20
                 ),),
                 SizedBox(width: 10,),
                 Text("scheduled (25 june)",style: TextStyle(
                  fontSize: 12
                 ),)
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
         ],
    );
  }
}


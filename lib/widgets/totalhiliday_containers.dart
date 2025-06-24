import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';

class totalhiliday_containers extends StatelessWidget {
  const totalhiliday_containers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
                       SizedBox(width: 10,),
                       Text("(bakrid-17 june)",style: TextStyle(
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
              );
  }
}


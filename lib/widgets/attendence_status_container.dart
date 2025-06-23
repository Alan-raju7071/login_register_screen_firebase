import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/widgets/custom_work_mode_container.dart';

class attendence_status_container extends StatelessWidget {
  const attendence_status_container({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("june 18,2025",style: TextStyle(
           fontWeight: FontWeight.bold
          ),),
       
      Row(
        children: [
          Text("Status"),
      
      Spacer(),
      Container(
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(5),
         color: Colorconstant.lightgreen
       ),
       child: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
         child: Text("present",style: TextStyle(
           color: Colorconstant.darkgreen
         ),),
       ),
      ),
        ],
      ),
      Divider(),
      Row(
       children: [
         Icon(Icons.access_time_outlined,color: Colorconstant.green,),
         SizedBox(width: 5,),
         Column(
           children: [
             Text("check-in",style: TextStyle(
           fontWeight: FontWeight.bold
          ),),
             Text("9:30 am",style: TextStyle(color: Colorconstant.green,),)
           ],
         ),
         Expanded(
           child: Container(
             
             
             padding: EdgeInsets.symmetric(vertical: 5,horizontal: 80),
             child: Center(
               child: Row(
                 children: [
                   Container(
                     color: Colorconstant.lightgrey,
                     height: 2,
                     width: 55,
                   ),
                   
                   Icon(Icons.arrow_forward,color: Colorconstant.lightgrey,)
                 ],
               ),
             ),
           ),
         ),
         Icon(Icons.alarm_off_outlined,color: Colorconstant.green,),
          SizedBox(width: 5,),
         Column(
           children: [
             Text("check-out",style: TextStyle(
           fontWeight: FontWeight.bold
          ),),
             Text("6:00 am",style: TextStyle(color: Colorconstant.green,))
           ],
         ),
         
       ],
      ),
                    
      Row(
       children: [
         custom_workMode_container(title: "Work Mode",subtitle: "Office",subtitlecolor: Colorconstant.darkblue,containercolor: Colorconstant.lightblue,),
         Spacer(),
         custom_workMode_container(containercolor: Colorconstant.lightorange, title: "Verification", subtitle: "Selfie", subtitlecolor: Colorconstant.darkorange)
       ],
      ),
     
      Material(
       elevation: 2,
       shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Container(
         width: double.infinity,
         padding: EdgeInsets.all(10),
         child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Icon(Icons.location_on_outlined),
                 Text("location"),
              ],
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
               child: Text("Lat: 13.05, Long:80.24",style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 12,
               ),),
             )
           ],
         ),
        ),
      ),
       SizedBox(height: 10,),
      Material(
       elevation: 2,
       shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Container(
         width: double.infinity,
         padding: EdgeInsets.all(10),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Row(
                children: [
                 Icon(Icons.note_outlined),
                 Text("Notes"),
                  ],
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
               child: Text("Worked On Bug Fixing",style: TextStyle(
                 fontSize: 12,
                 fontWeight: FontWeight.bold
               ),),
             )
           ],
         ),
        ),
      ),
       ],
      ),
    );
  }
}


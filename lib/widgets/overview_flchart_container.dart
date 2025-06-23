import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/widgets/custo_overview_container.dart';
import 'package:login_register_screen_firebase/widgets/fl_chart_card.dart';

class overview_piechart_container extends StatelessWidget {
  const overview_piechart_container({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
     elevation: 2,
     shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Container(
       width: double.infinity,
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 10),
             child: Text("overview",style: TextStyle(
               fontSize: 16,
               fontWeight: FontWeight.bold
             ),),
           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 10),
             child: Text("Total Days :30",style: TextStyle(
               fontSize: 12,
               
             ),),
             
           ),
           SizedBox(height: 10,),
           Row(
             children: [
               custom_overview_container(textcolor: Colorconstant.darkgreen,texttitle: "Presence",textsubtitle: "20",),
                SizedBox(width: 10,),
               custom_overview_container(textcolor: Colorconstant.primaryred,texttitle: "Absence",textsubtitle: "03",),
                 SizedBox(width: 10,),
               custom_overview_container(textcolor: Colorconstant.primaryorange,texttitle: "Leaves",textsubtitle: "02",),
                  SizedBox(width: 10,),
               custom_overview_container(textcolor: Colorconstant.primaryblue,texttitle: "Late",textsubtitle: "6",),
             ],
           ),
            SizedBox(height: 10,),
     flChartcard()
           
         ],
       ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';

class daily_clock_container extends StatelessWidget {
  const daily_clock_container({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colorconstant.darkgrey)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
        crossAxisAlignment: CrossAxisAlignment.start,
              
            children: [
              Text("Date",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
              SizedBox(height: 20,),
              Text("June 21",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text("June 22",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
              ),
              Text("June 23",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
            ],
          ),
          Column(
        crossAxisAlignment: CrossAxisAlignment.start,
              
            children: [
               Text("Check-in",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
               SizedBox(height: 20,),
              Text("09:15 AM",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text("--",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
              ),
              Text("09:30",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
            ],
          ),
          Column(
        crossAxisAlignment: CrossAxisAlignment.start,
              
            children: [
               Text("Check-out",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
               SizedBox(height: 20,),
              Text("09:45 AM",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text("--",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
              ),
              Text("04:00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
            ],
          ),
          Column(
        crossAxisAlignment: CrossAxisAlignment.start,
              
            children: [
               Text("Total Hrs",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
               SizedBox(height: 20,),
              Text("8.5 hrs",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text("0 hrs",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
              ),
              Text("6.5 hrs",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
            ],
          ),
          Column(
        crossAxisAlignment: CrossAxisAlignment.start,
              
            children: [ Text("Status",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
            SizedBox(height: 20,),
              Text("Present",style: TextStyle(color: Colorconstant.green,fontSize: 12,fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text("Absent",style: TextStyle(color: Colorconstant.primaryred,fontSize: 12,fontWeight: FontWeight.bold),),
              ),
              Text("Haif Day",style: TextStyle(color: Colorconstant.primaryorange,fontSize: 12,fontWeight: FontWeight.bold),),],
          ),
          
              
        ],
      ),
    );
  }
}


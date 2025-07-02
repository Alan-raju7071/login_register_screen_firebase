import 'package:flutter/material.dart';

import 'package:login_register_screen_firebase/controller/punchin_controller.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:provider/provider.dart';


class CheckInCheckOutContainer extends StatelessWidget {
  const CheckInCheckOutContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final punchController = Provider.of<PunchController>(context);

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 190, 220, 235),
            spreadRadius: 1,
            blurRadius: 0,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
             punchController.hasPunchedIn
                 ? "You are puched-In 09:00 AM (${punchController.selectedPunchInType == PunchInType.onsite ? 'Onsite' : 'Work from Home'})"
                : "You Haven't punched-In Yet",
            style: TextStyle(
              fontSize: 16,
              
            ),
          ),
          Row(
            children: [
              Icon(Icons.alarm_on_outlined,color: Colorconstant.primaryorange),
              SizedBox(width: 5,),
              Text("09:20 am_11-06-2025",style: TextStyle(color: Colorconstant.primaryorange),),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Icon(Icons.location_on,color: Colorconstant.primaryred),
              SizedBox(width: 5,),
              Text("Location/IP(for remote attendence)"),
            ],
          ),


          const SizedBox(height: 30),
          Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Expanded(
      child: InkWell(
        onTap: punchController.hasPunchedIn
            ? null 
            : () {
                punchController.handlePunchIn(
                  context: context,
                  onTypeSelected: (type) {},
                );
              },
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: punchController.hasPunchedIn ? Colors.grey : Colors.blue,
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.login_rounded, color: Colors.white),
              SizedBox(width: 8),
              Text(
                "Punch-In",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    ),
    const SizedBox(width: 20),
    Expanded(
      child: InkWell(
        onTap: punchController.hasPunchedIn
            ? () => punchController.handlePunchOut(context)
            : null, 
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: punchController.hasPunchedIn ? Colorconstant.primaryblue : Colors.grey,
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.logout, color: Colors.white),
              SizedBox(width: 8),
              Text(
                "Punch-Out",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    ),
  ],
),

        ],
      ),
    );
  }
}

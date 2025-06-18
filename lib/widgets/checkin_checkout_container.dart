import 'package:flutter/material.dart';

import 'package:login_register_screen_firebase/controller/punchin_controller.dart';
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
          // Text(
          //   // punchController.hasPunchedIn
          //   //     ? "You are Checked-In (${punchController.selectedPunchInType == PunchInType.onsite ? 'Onsite' : 'Work from Home'})"
          //   //     : "You Haven't Checked-In Yet",
          //   style: TextStyle(
          //     fontSize: 16,
              
          //   ),
          // ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    punchController.handlePunchIn(
                      context: context,
                      onTypeSelected: (type) {
                        
                      }, 
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
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
                  onTap: () =>  punchController.handlePunchOut(context),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
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

import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/widgets/leave_overview_container.dart';
import 'package:login_register_screen_firebase/widgets/leave_taken_containers.dart';
import 'package:login_register_screen_firebase/widgets/upcoming_leave_container.dart';

class RequestLeavedetailsScreen extends StatelessWidget {
  const RequestLeavedetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: request_LeavetabBar(),
    );
  }
}

class request_LeavetabBar extends StatelessWidget {
  const request_LeavetabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            
            leave_taken_containers(),
            SizedBox(height: 10),
            leave_overview_container(),
            SizedBox(height: 10),
            upcoming_leave_container(),
            
    
        
        
          ],
        ),
      ),
    );
  }
}


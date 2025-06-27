import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/widgets/Attachment_textfield.dart';
import 'package:login_register_screen_firebase/widgets/Employee_ID_Textfield.dart';
import 'package:login_register_screen_firebase/widgets/FromDate_ToDate_Textfield.dart';
import 'package:login_register_screen_firebase/widgets/LeaveType_ChooseType_textfield.dart';
import 'package:login_register_screen_firebase/widgets/Reason_Textfield.dart';
import 'package:login_register_screen_firebase/widgets/employee_Name_textfield.dart';
import 'package:login_register_screen_firebase/widgets/submitbutton.dart';

class LeaveExplainScreen extends StatelessWidget {
  const LeaveExplainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea( 
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector( 
                  onTap: () => Navigator.pop(context),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.arrow_back),
                      const SizedBox(width: 4),
                      const Text(
                        "Back",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                const Text(
                  "Apply for leave",
                  style: TextStyle(
                    color: Colorconstant.primaryblack,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),
                const Text("Employee Name", style: TextStyle(color: Colorconstant.darkgrey)),
                const SizedBox(height: 8),
                const employeename_textfiald(),

                const SizedBox(height: 16),
                const Text("Employee ID", style: TextStyle(color: Colorconstant.darkgrey)),
                const SizedBox(height: 8),
                const employee_ID_textfield(),

                const SizedBox(height: 16),
                const FromDateToDateTextField(),

                const SizedBox(height: 16),
                const LeaveType_ChooseType_textfield(),

                const SizedBox(height: 16),
                const Text("Reason", style: TextStyle(color: Colorconstant.darkgrey)),
                const SizedBox(height: 8),
                const Reason_Textfield(),

                const SizedBox(height: 16),
                const Text("Attachment", style: TextStyle(color: Colorconstant.darkgrey)),
                const SizedBox(height: 8),
                const AttachmentTextField(), 

                const SizedBox(height: 20),
                const submitbutton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

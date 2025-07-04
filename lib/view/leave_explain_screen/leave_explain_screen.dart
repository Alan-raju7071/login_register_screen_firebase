import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/widgets/Attachment_textfield.dart';
import 'package:login_register_screen_firebase/widgets/Employee_ID_Textfield.dart';
import 'package:login_register_screen_firebase/widgets/FromDate_ToDate_Textfield.dart';
import 'package:login_register_screen_firebase/widgets/LeaveType_ChooseType_textfield.dart';
import 'package:login_register_screen_firebase/widgets/Reason_Textfield.dart';
import 'package:login_register_screen_firebase/widgets/employee_Name_textfield.dart';
import 'package:login_register_screen_firebase/widgets/submitbutton.dart';

class LeaveExplainScreen extends StatefulWidget {
  const LeaveExplainScreen({super.key});

  @override
  State<LeaveExplainScreen> createState() => _LeaveExplainScreenState();
}

class _LeaveExplainScreenState extends State<LeaveExplainScreen> {
  final _formKey = GlobalKey<FormState>();
  final _employeeNameController = TextEditingController();
  final _employeeIDController = TextEditingController();
  final _reasonController = TextEditingController();



  @override
  void dispose() {
    _employeeNameController.dispose();
    _employeeIDController.dispose();
    _reasonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Form( 
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.arrow_back),
                        SizedBox(width: 4),
                        Text(
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
                  EmployeenameTextField(
  controller: _employeeNameController,
  validator: (value) {
    if (value == null || value.trim().isEmpty) {
      return "Please enter name"; 
    }
    return null;
  },
),


                  const SizedBox(height: 16),
                  const Text("Employee ID", style: TextStyle(color: Colorconstant.darkgrey)),
                  const SizedBox(height: 8),
                  EmployeeIDTextField(
  controller: _employeeIDController,
  validator: (value) {
    if (value == null || value.trim().isEmpty) {
      return "Please enter employee ID";
    }
    return null;
  },
),

                  const SizedBox(height: 16),
                  const FromDateToDateTextField(),

                  const SizedBox(height: 16),
                  const LeaveType_ChooseType_textfield(),

                  const SizedBox(height: 16),
                  const Text("Reason", style: TextStyle(color: Colorconstant.darkgrey)),
                  const SizedBox(height: 8),
                   ReasonTextField(
                   controller: _reasonController,
                   validator: (value) {
                   if (value == null || value.trim().isEmpty) {
                    return "Please enter reason for leave";
                      }
                      return null;
                         },
                          ),
                    const SizedBox(height: 16),
                  const Text("Attachment", style: TextStyle(color: Colorconstant.darkgrey)),
                  const SizedBox(height: 8),
                  const AttachmentTextField(),
                   const SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        print("Form Submitted Successfully");
                      } else {
                        print("Please fill all required fields");
                      }
                    },
                    child: submitbutton(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

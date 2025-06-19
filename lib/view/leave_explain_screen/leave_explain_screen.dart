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
      
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           Material(
                elevation: 2,
                shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
                child: Container(
                  width: 80,
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back),
                      Text("Back",style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text("Apply for leave",style: TextStyle(
                  color: Colorconstant.primaryblack,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                 ),),
                  ),
              SizedBox(height: 10,),
              Text("Employee Name",style: TextStyle(
                  color: Colorconstant.darkgrey
                 ),),
              SizedBox(height: 10,),
              employeename_textfiald(),
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 10),
                 child: Text("Employee ID",style: TextStyle(
                  color: Colorconstant.darkgrey
                 ),),
               ),
              employee_ID_textfield(),
               SizedBox(height: 10,),
              FromDateToDateTextField(),
           SizedBox(height: 20,),
          LeaveType_ChooseType_textfield(),
          Padding(
                 padding: const EdgeInsets.symmetric(vertical: 10),
                 child: Text("Reason",style: TextStyle(
                  color: Colorconstant.darkgrey
                 ),),
               ),
               SizedBox(height: 10,),
              Reason_Textfield(),
                Padding(
                 padding: const EdgeInsets.symmetric(vertical: 10),
                 child: Text("Attachment",style: TextStyle(
                  color: Colorconstant.darkgrey
                 ),),
               ),
              Attachment_textfield(),
           SizedBox(height: 10,),
              submitbutton()
           ],
          ),
        ),
      ),
    );
  }
}


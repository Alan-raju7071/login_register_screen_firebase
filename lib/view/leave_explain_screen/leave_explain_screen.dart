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
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(5),
          child: CircleAvatar(
                              
                 radius: 22,
          backgroundImage: NetworkImage(
            
           "data:image/png;base64,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"
              ),
               ),
        ),
             title: Material(
              elevation: 2,
              shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
               child: TextField(
                
                 decoration: InputDecoration(
                   labelText: 'Search',
                  
                   isDense: true, 
                   contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                    
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(5), 
                     borderSide: BorderSide.none, 
                   ),
                   
                 ),
               ),
             ),
actions: [
  CircleAvatar(
    radius: 15,
        backgroundColor: Colors.blue,
        child: Icon(Icons.notifications, color: Colors.white),
      ),
      SizedBox(width: 10,),
       CircleAvatar(
        
                            
       radius: 15,
        backgroundImage: NetworkImage("https://images.pexels.com/photos/29504480/pexels-photo-29504480.jpeg")
             ),
              SizedBox(width: 10,),
  
],


      ),
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
                      Text("Back")
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


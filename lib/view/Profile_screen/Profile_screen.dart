
import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/utulits/constant/text_constant.dart';
import 'package:login_register_screen_firebase/widgets/image_container.dart';
import 'package:login_register_screen_firebase/widgets/profile_head_container.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstant.primarywhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
             profile_head_container(),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colorconstant.darkgrey.withOpacity(0.2)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        buildRow("Name", TextConstant.username),
        Divider(color: Colors.grey.shade300, height: 20, thickness: 0.5, indent: 5, endIndent: 5,),
        buildRow("Employee ID", TextConstant.userID),
        Divider(color: Colors.grey.shade300, height: 20, thickness: 0.5, indent: 5, endIndent: 5,),
         buildRow("Designation", TextConstant.userdesi),
        Divider(color: Colors.grey.shade300, height: 20, thickness: 0.5, indent: 5, endIndent: 5,),
        buildRow("Department", TextConstant.userDepartment),
            ],
          ),
         ),
         ),
         SizedBox(height: 30,),
        image_container(),
        Container(
          width: 270,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colorconstant.primaryblue
          ),
          child: Center(
            child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,),
        child: Text("Start Work",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
            ),
          ),
        ),
        SizedBox(height: 30,),
         ],
        ),
      ),
    );
  }
  Widget buildRow(String title, String value) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        width: 120, 
        child: Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      Text(
        ":",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      SizedBox(width: 10),
      Expanded(
        child: Text(
          value,
          style: TextStyle(fontSize: 16, color: Colorconstant.darkgrey),
        ),
      ),
    ],
  );
}
}


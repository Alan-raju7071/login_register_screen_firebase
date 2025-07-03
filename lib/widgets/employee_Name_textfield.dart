import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';

class EmployeenameTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const EmployeenameTextField({
    super.key,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: TextFormField(
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
          labelText: 'Employee Name - auto filled',
          labelStyle: TextStyle(
            fontSize: 12,
            color: Colorconstant.primarygrey,
            fontWeight: FontWeight.bold,
          ),
          isDense: true,
          contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide.none,
          ),
          prefixIcon: Icon(Icons.person_outline, color: Colorconstant.primarygrey),
          
        ),
      ),
    );
  }
}

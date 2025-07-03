import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';

class ReasonTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const ReasonTextField({
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
        maxLines: 3,
        decoration: const InputDecoration(
          hintText: "Text area",
          hintStyle: TextStyle(
            color: Colorconstant.primarygrey,
            fontSize: 15,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

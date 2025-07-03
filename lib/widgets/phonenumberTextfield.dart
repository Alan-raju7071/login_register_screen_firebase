import 'package:flutter/material.dart';

class phonenumberTextfield extends StatelessWidget {
  const phonenumberTextfield({
    super.key,
    required this.phoneController,
  });

  final TextEditingController phoneController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: phoneController,
      keyboardType: TextInputType.phone,
      decoration: const InputDecoration(
        labelText: "Phone Number",
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.phone),
      ),
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'Please enter your phone number';
        }
        if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
          return 'Enter a valid 10-digit phone number';
        }
        return null;
      },
    );
  }
}


import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart'; 
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';

class AttachmentTextField extends StatelessWidget {
  const AttachmentTextField({super.key});

  Future<void> _pickFile(BuildContext context) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      final file = result.files.single;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Selected file: ${file.name}')),
      );
    } else {
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: InkWell(
        onTap: () => _pickFile(context),
        borderRadius: BorderRadius.circular(5),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Icon(Icons.attachment, color: Colorconstant.primarygrey),
              const SizedBox(width: 8),
              Text(
                'Attachment (optional)',
                style: TextStyle(
                  fontSize: 12,
                  color: Colorconstant.primarygrey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

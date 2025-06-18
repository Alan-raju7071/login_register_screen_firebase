import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';

class Attachment_textfield extends StatelessWidget {
  const Attachment_textfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
       child: TextField(
        
         decoration: InputDecoration(
           labelText: 'Attachment(option)',
           labelStyle: TextStyle(
            fontSize: 12,
            color: Colorconstant.primarygrey,
            fontWeight: FontWeight.bold
           ),
          
           isDense: true, 
           contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
            
           border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(5), 
             borderSide: BorderSide.none, 
           ),
           prefixIcon: Icon(Icons.attachment,color: Colorconstant.primarygrey,),
           
         ),
       ),
     );
  }
}


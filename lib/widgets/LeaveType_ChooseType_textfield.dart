import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';

class LeaveType_ChooseType_textfield extends StatelessWidget {
  const LeaveType_ChooseType_textfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
    children: [
      Expanded(
        child: Material(
          elevation: 2,
          shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
           child: TextField(
            
             decoration: InputDecoration(
               labelText: 'Leave Type',
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
               prefixIcon: Icon(Icons.exit_to_app,color: Colorconstant.primarygrey,),
               
             ),
           ),
         ),
      ),
       SizedBox(width: 20,),
      
    
    
      Expanded(
        child:  Material(
          elevation: 2,
          shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
           child: TextField(
            
             decoration: InputDecoration(
               labelText: 'Choose Type',
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
                suffixIcon: 
                Column(
                 children: [
                  
                  Icon(Icons.arrow_drop_up,size: 25,),
                  SizedBox(height: 2), 
                   Icon(Icons.arrow_drop_down,size: 25,),
                 ],
               )
               
             ),
           ),
         ),
      ),
    ],
          ),
        ),
      ],
    );
  }
}


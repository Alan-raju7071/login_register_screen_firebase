import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/utulits/constant/image_constant.dart';
import 'package:login_register_screen_firebase/utulits/constant/text_constant.dart';

class appbar_title extends StatelessWidget {
  const appbar_title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
    Expanded(
      child: Container(
        
  
       padding: EdgeInsets.all(3),
       height:70 ,
        child: Stack(
         children: [
           Container(
             padding: EdgeInsets.all(5),
             height: 70,

             child: Container(
             height: 70,
             width: 370,
             decoration: BoxDecoration(
               gradient: LinearGradient(colors: [Colors.blueAccent,Colors.green]),
               borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))
               
             ),
             child: Row(
               children: [
                 SizedBox(width: 20),
                 Container(
                   height: 40,
                   width: 35,
                   decoration: BoxDecoration(
                     image: DecorationImage(
                       fit: BoxFit.fill,
                       image: NetworkImage(
                         ImageConst.profileimage,
                       ),
                     ),
                   ),
                 ),
                 SizedBox(width: 10),
                 Expanded(
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                         TextConstant.username,
                         style: TextStyle(
                           fontSize: 16,
                           fontWeight: FontWeight.bold,
                           color: Colorconstant.primarywhite,
                         ),
                       ),
                       Text(
                         TextConstant.userdesi,
                         style: TextStyle(
                           fontSize: 12,
                           color: Colorconstant.primarywhite,
                         ),
                       ),
                     ],
                   ),
                 ),
               ],
             ),
                    ),
           ),
                   Positioned(
                   
                     
                     
                     
                     top: 0,
                     bottom: 0,
                     right: 0,
                     
                     
                     
                     
                     
                     
                     
                     child: CircleAvatar(
                            
                            radius: 20,
                            backgroundImage: NetworkImage(ImageConst.appbarimage
                             
                            ),
                          ),
                   ),
        
         ]
        ),
      ),
    ),
        
       ]
    );
  }
}


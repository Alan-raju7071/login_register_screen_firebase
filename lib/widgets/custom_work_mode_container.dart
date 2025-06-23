import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';

class custom_workMode_container extends StatefulWidget {
  final String title;
  final String subtitle;
  final Color containercolor;
  final Color subtitlecolor;

  const custom_workMode_container({
    super.key,required this.containercolor,required this.title,required this.subtitle,required this.subtitlecolor
  });

  @override
  State<custom_workMode_container> createState() => _custom_workMode_containerState();
}

class _custom_workMode_containerState extends State<custom_workMode_container> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child:
       Stack(
         children: [ 
          Container(
            decoration: BoxDecoration(
              
              borderRadius: BorderRadius.circular(5),
              border: Border.all( color: Colorconstant.primaryblue,width: 3)
            ),
            height: 54,
            width: 95,
           
          ),
          Positioned(
            left: 2,
            
            
            child: Container(
              padding: EdgeInsets.all(5),
              height: 68,
              width: 95,
            decoration: BoxDecoration(
              color: Colorconstant.primarywhite,
              
              borderRadius: BorderRadius.circular(5)
              
            ),
            child: Column(
              children: [
                Text(widget.title,style: TextStyle(
                  fontWeight: FontWeight.normal
                ),),
                 Material(
                  elevation: 2,
                  
                  shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
                   child: Container(
                                decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(5),
                                           color: widget.containercolor
                                ),
                                child: Padding(
                                           padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                                           child: Text(widget.subtitle,style: TextStyle(
                                             color:widget.subtitlecolor,
                                             fontSize: 14
                                           ),),
                                ),
                               ),
                 ),
              ],
            ),
                                   
                                   ),
          ),
         ]
       ),
    );
  }
}



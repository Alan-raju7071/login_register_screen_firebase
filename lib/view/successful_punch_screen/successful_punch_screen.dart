import 'dart:math';

import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/view/Bottomnavogation_screen/Bottomnavigation_screen.dart';
import 'package:login_register_screen_firebase/view/Homescreen%20copy/Homescreen.dart';

class SuccessfulPunchScreen extends StatefulWidget {
  final Color white;
  final Color green;
  final String text;

  const SuccessfulPunchScreen({super.key, required this.white,
  required this.text,
    required this.green,});

  @override
  State<SuccessfulPunchScreen> createState() => _SuccessfulPunchScreenState();
}

class _SuccessfulPunchScreenState extends State<SuccessfulPunchScreen> {
  @override
  void initState() {
    super.initState();
    
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Bootomnavigationbarscreen.BottomNavigationScreen()),
      );
    });
  }
  
  

  @override
  Widget build(BuildContext context,) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Bootomnavigationbarscreen.BottomNavigationScreen()));
          
        }, icon: Icon(Icons.arrow_back))
      ),
      
      body:Stack(
        children: [ 
         
          Container(
        
          decoration: BoxDecoration(
            
            
              gradient: LinearGradient(colors: [widget.white,widget.green],
              
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
              
              
              )
              
              
              ),
              
                
              ),
               Container(
           
            child: Column(
              
              children: [
                
                SizedBox(height: 150,),
                Center(
                  child: CircleAvatar(
                    backgroundColor: widget.green,
                    radius: 30,
                    child: Icon(Icons.check,color: Colorconstant.primarywhite,size: 40,),
                  ),
                ),
                SizedBox(height: 30,),
                Text(widget.text,
                style: TextStyle(color: widget.green),

                ),
                Text("at 09:05 AM",
                style: TextStyle(color: widget.green),

                )
              ],
            ),
          ),
        ]
      ),
            
            
            
          
          
          
          
      
        
        
      
    );
  }
}
import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/view/successful_punch_screen/successful_punch_screen.dart';

class CenterfaceScreen extends StatefulWidget {
    final Color white;
  final Color green;
  final String text;

  const CenterfaceScreen({super.key,required this.white,
    required this.green,required this.text});

  @override
  State<CenterfaceScreen> createState() => _CenterfaceScreenState();
}

class _CenterfaceScreenState extends State<CenterfaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Stack(
        children: [ 
         
          Container(
        
          decoration: BoxDecoration(
            
            
              gradient: LinearGradient(colors: [Colorconstant.primarywhite,Colorconstant.primaryblue],
              
              begin: Alignment.center,
              end: Alignment.bottomCenter
              
              
              )
              
              
              ),
              
                
              ),
               Container(
           
            child: Column(
              
              
              children: [
                
                SizedBox(height: 450,),
                Center(child: Text("Center Your face",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),)),
                Center(child: Text("point your face right at the box \nthen take a photo",textAlign: TextAlign.center)),
                SizedBox(height: 50,),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colorconstant.primarywhite,
                        radius: 15,
                        child: Icon(Icons.flip_camera_ios),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SuccessfulPunchScreen(white: widget.white, green: widget.green,text: widget.text,)));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: CircleAvatar(
                          backgroundColor: Colorconstant.primaryblue,
                          radius: 35,
                          child: Icon(Icons.check,color: Colorconstant.primarywhite,size: 40,),
                                              ),
                        ),
                      ),
                      CircleAvatar(
                         backgroundColor: Colorconstant.primarywhite,
                        radius: 15,
                        child: Icon(Icons.electric_bolt),
                      )
                    ],
                  ),
                )


                
              ],
            ),
          ),
        ]
      ),
         
    );
  }
}
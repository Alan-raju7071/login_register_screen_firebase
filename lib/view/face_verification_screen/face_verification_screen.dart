import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/view/centerface/centerface_screen.dart';

class FaceVerificationScreen extends StatefulWidget {
   final Color white;
  final Color green;
  final String text;
  const FaceVerificationScreen({super.key,required this.white,
  required this.text,
    required this.green,});

  @override
  State<FaceVerificationScreen> createState() => _FaceVerificationScreenState();
}

class _FaceVerificationScreenState extends State<FaceVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstant.primarywhite,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            SizedBox(height: 40),
             Text("Face Verification",style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold
             ),),
              Text("please capture your face",style: TextStyle(
                fontSize: 20
              ),),
              SizedBox(height: 120),
              Center(
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colorconstant.primarygrey)
                
                  ),
                  child: Center(
                    
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 50),
                        child: Container(
                        
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwn9aymBISL8jn0uicE_gC_QkxLoZP2J9qJNqgJ5aPueceWjA5OGKHRXE&s"))
                            ),
                            
                            height: 100,
                            width: 100,
                            
                          ),
                      ),
                    ),
                  ),
                ),
                 SizedBox(height: 60),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CenterfaceScreen(white: widget.white, green: widget.green,text: widget.text,)));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 65),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colorconstant.primaryblue
                      ),
                      child: Text("Take Photo",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colorconstant.primarywhite
                      ),),
                    ),
                  ),
                )
              
        
           
           
          ],
        ),
      ),
    );
  }
}
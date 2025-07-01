import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/utulits/constant/image_constant.dart';
import 'package:login_register_screen_firebase/utulits/constant/text_constant.dart';

class profile_head_container extends StatelessWidget {
  const profile_head_container({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180, 
      
      width: double.infinity,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
        
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(ImageConst.appbarbackgrounde),
              ),
            ),
          ),
    
          // Gradient Overlay
          Positioned(
            child: Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colorconstant.transperentblue,
                    Colorconstant.transperentgreen,
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          TextConstant.username,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colorconstant.blue,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          TextConstant.userdesi,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colorconstant.primarywhite,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
    
          
          Positioned(
            left: 20,
            top: 80,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colorconstant.primarywhite,
              child: Center(
                child: CircleAvatar(
                  radius: 47,
                  backgroundImage: NetworkImage(ImageConst.profileimage),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

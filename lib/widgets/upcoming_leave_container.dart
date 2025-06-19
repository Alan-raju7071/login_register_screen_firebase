import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';

class upcoming_leave_container extends StatelessWidget {
  const upcoming_leave_container({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colorconstant.lightgrey)
      ),
      
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Upcoming Leave",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),),
          Text("your scheduled time off",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13
                      ),),
                      SizedBox(height: 15,),
          Row(
            children: [
              Text("Annual Leave",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12
                      ),),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colorconstant.primaryblack)
                ),
                padding: EdgeInsets.symmetric(vertical: 2,horizontal: 7),
                child: Text("Pending",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12
                      ),),
              )
            ],
          ),
          Text("April 22,2025 to 24,2025 (3 days)",style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12
                      ),),
          SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
            decoration: BoxDecoration(
              boxShadow:  [
            BoxShadow(
              color: Colorconstant.lightyellow,
              spreadRadius: 1,
              blurRadius: 0,
              offset: Offset(0, 0),
            ),
          ],
              
              
             
        ),
      
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.info_outline, color: Colorconstant.primarybrouwn),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text("Pending Approval",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colorconstant.lightbrouwn
                     ),),
                    Text("Your leave request is waiting manager \napproval.",style: TextStyle(
                      fontSize: 12
                    ),),
                  ],
                )
              ],
            ),
          )
      
        ],
      ),
    );
  }
}


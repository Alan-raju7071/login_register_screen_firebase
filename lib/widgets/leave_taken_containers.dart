import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';

class leave_taken_containers extends StatelessWidget {
  const leave_taken_containers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Material(
                elevation: 2,
                shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
                child: Container(
                   height: 130,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Total Leave Taken",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14
                          ),),
                          
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Icon(Icons.receipt_long,color: Colorconstant.primaryblue,),
                          )
                        ],
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Text("16 days",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                            ),),
                      ),
                      
                      Text("29 days remaining this year",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12
                          ),),
                          SizedBox(height: 2),
                          SizedBox(
                            width: 150,
                            child: LinearProgressIndicator(
                              
                              minHeight: 6,
                              
                              
                              borderRadius: BorderRadius.circular(10),
                                                  value: 35 / 45, 
                                                  backgroundColor: Colorconstant.lightblue,
                                                  valueColor: AlwaysStoppedAnimation<Color>(Colorconstant.primaryblue),
                                                ),
                          ),
                
                      
                
                    ],
                  ),
                ),
              ),
            ),
             SizedBox(width: 10),
            Expanded(
              child: Material(
                elevation: 2,
                shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
                child: Container(
                  height: 130,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Approval Rate",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14
                          ),),
                          
                         Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Icon(Icons.disc_full_outlined,color: Colorconstant.primaryblue,),
                          )
                        ],
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Text("92%",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                            ),),
                      ),
                      
                      Text("29 days remaining this year",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12
                          ),),
                      
                
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
     
    SizedBox(height: 10),
    Row(
      children: [
        Expanded(
          child: Material(
            elevation: 2,
            shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: Container(
               height: 130,
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("Pending Request",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14
                      ),),
                      
                     Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(Icons.hourglass_empty_outlined,color: Colorconstant.primaryblue,),
                      )
                    ],
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text("1",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),),
                  ),
                  
                  Text("29 days remaining this year",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12
                      ),),
                      SizedBox(height: 5),
                      
                  
            
                ],
              ),
            ),
          ),
        ),
         SizedBox(width: 10),
        Expanded(
          child: Material(
            elevation: 2,
            shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: Container(
              height: 130,
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("Team Member on Leave",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14
                      ),),
                      
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(Icons.people_outlined,color: Colorconstant.primaryblue,),
                      )
                    ],
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text("2",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),),
                  ),
                  
                  Text("29 days remaining this year",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12
                      ),),
                  
            
                ],
              ),
            ),
          ),
        ),
      ],
    ),
     ],
    );
  }
}
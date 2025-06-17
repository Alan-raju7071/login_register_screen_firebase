import 'package:flutter/material.dart';

class over_view_container extends StatelessWidget {
  const over_view_container({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        Expanded(
          child: Material(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            shadowColor: Colors.grey,
            child: Container(
              
              
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
               
              ),
              child: Column(
                children: [
                  Text("presence",style: TextStyle(
                    color: Colors.green,
                                      
                                      fontWeight: FontWeight.bold
                                    ),),
                   SizedBox(height: 10,),
                  Text("20",style: TextStyle(
                     color: Colors.green,
                    fontSize: 20,
                    
                                      
                                      fontWeight: FontWeight.bold
                                    ),)
                ],
              ),
            ),
          ),
        ),
         SizedBox(width: 10,),
        Expanded(
          child: Material(
             elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            shadowColor: Colors.grey,
            child: Container(
              padding: EdgeInsets.all(10),
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                
              ),
              child: Column(
                children: [
                  Text("Absence",style: TextStyle(
                    color: Colors.red,
                                      
                                      fontWeight: FontWeight.bold
                                    ),),
                   SizedBox(height: 10,),
                  Text("03",style: TextStyle(
                     color: Colors.red,
                    fontSize: 20,
                    
                                      
                                      fontWeight: FontWeight.bold
                                    ),)
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 10,),
        Expanded(
          child: Material(
             elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            shadowColor: Colors.grey,
            
            child: Container(
              padding: EdgeInsets.all(10),
               decoration: BoxDecoration(
              
                
              ),
              child: Column(
                children: [
                  Text("leaves",style: TextStyle(
                    color: Colors.orange,
                                      
                                      fontWeight: FontWeight.bold
                                    ),),
                  SizedBox(height: 10,),
                  Text("02",style: TextStyle(
                     color: Colors.orange,
                    fontSize: 20,
                    
                                      
                                      fontWeight: FontWeight.bold
                                    ),)
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}


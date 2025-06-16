import 'package:flutter/material.dart';

class MyTaskScreen extends StatelessWidget {
  const MyTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
        
        //1
        
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text("UI/UX Design Implement",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.green
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(".Translating design specifice visually appealing user inte HTML, CSS, and Javascript into functional and using technologies like"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            
                            color: Colors.blue
                
                          ),
                          child: Center(child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text("Start",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),),
                          )),),
                
                      ],
                    ),
                    SizedBox(height: 10,),
                    Divider(color: Colors.black,)
                  ],
                ),
              ),
            ),
        
        //2
        
        
        
        
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text("Responsive Design",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.green
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(".Ensuring that the application adapts seamlessly to different screen sizes and devices."),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            
                            color: Colors.blue
                
                          ),
                          child: Center(child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text("Start",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),),
                          )),),
                
                      ],
                    ),
                    SizedBox(height: 10,),
                    Divider(color: Colors.black,)
                  ],
                ),
              ),
            ),
        
        
        
        
        //3
        
        
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text("Back-end Development",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.green
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(".Creating and managing databases for efficient data storage, retrieval, and processing."),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            
                            color: Colors.blue
                
                          ),
                          child: Center(child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text("Start",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),),
                          )),),
                
                      ],
                    ),
                    SizedBox(height: 10,),
                    Divider(color: Colors.black,)
                  ],
                ),
              ),
            ),
        
        
        
        
        
        //4
        
        
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text("Server-Side Logic",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.green
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(".Developing and maintaining the logic that runs on the server, handling user requests, processing data, and Interacting"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            
                            color: Colors.blue
                
                          ),
                          child: Center(child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text("Start",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),),
                          )),),
                
                      ],
                    ),
                   
                  ],
                ),
              ),
            ),
        
        
        
        
        
        
        
            
          ],
        ),
      ),
    );
  }
}
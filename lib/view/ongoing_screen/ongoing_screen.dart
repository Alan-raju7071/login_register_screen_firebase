import 'package:flutter/material.dart';

class OngoingScreen extends StatelessWidget {
  const OngoingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
             Container(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Text("UI/UX Design Implement",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.green
                            ),),
                            Spacer(),
                            Text("50% Done")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: [
                            Text("Status:  "),
                            Text("Ongoing task",style: TextStyle(color: Colors.blue),)
                          ],
                        ),
                      ),
                       Padding(
                         padding: const EdgeInsets.symmetric(vertical: 5),
                         child: Row(
                           children: [
                             Text("Start date:  "),
                             Text("12-05-2025")
                           ],
                         ),
                       ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Text("Expeted completion:  "),
                              Text("12-06-2025")
                            ],
                          ),
                        ),
        
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                           Text("piority"),
                           SizedBox(width: 20,),
                                   Text("High",style: TextStyle(color: Colors.red),),
                                   Spacer(),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              
                              color: Colors.blue
                  
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                children: [
                                 
                                   
                                  Text("Mark as done",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                  ),),
                                ],
                              ),
                            )),),
                  
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(color: Colors.black,)
                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: [
                            Text("UI/UX Design Implement",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.green
                            ),),
                            Spacer(),
                            Text("50% Done")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: [
                            Text("Status:  "),
                            Text("Ongoing task",style: TextStyle(color: Colors.blue),)
                          ],
                        ),
                      ),
                       Padding(
                         padding: const EdgeInsets.symmetric(vertical: 5),
                         child: Row(
                           children: [
                             Text("Start date:  "),
                             Text("12-05-2025")
                           ],
                         ),
                       ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Text("Expeted completion:  "),
                              Text("12-06-2025")
                            ],
                          ),
                        ),
        
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                           Text("piority"),
                           SizedBox(width: 20,),
                                   Text("High",style: TextStyle(color: Colors.red),),
                                   Spacer(),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              
                              color: Colors.blue
                  
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                children: [
                                 
                                   
                                  Text("Mark as done",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                  ),),
                                ],
                              ),
                            )),),
                  
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(color: Colors.black,)
                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: [
                            Text("UI/UX Design Implement",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.green
                            ),),
                            Spacer(),
                            Text("50% Done")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: [
                            Text("Status:  "),
                            Text("Ongoing task",style: TextStyle(color: Colors.blue),)
                          ],
                        ),
                      ),
                       Padding(
                         padding: const EdgeInsets.symmetric(vertical: 5),
                         child: Row(
                           children: [
                             Text("Start date:  "),
                             Text("12-05-2025")
                           ],
                         ),
                       ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Text("Expeted completion:  "),
                              Text("12-06-2025")
                            ],
                          ),
                        ),
        
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                           Text("piority"),
                           SizedBox(width: 20,),
                                   Text("High",style: TextStyle(color: Colors.red),),
                                   Spacer(),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              
                              color: Colors.blue
                  
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                children: [
                                 
                                   
                                  Text("Mark as done",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                  ),),
                                ],
                              ),
                            )),),
                  
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(color: Colors.black,)
                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: [
                            Text("UI/UX Design Implement",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.green
                            ),),
                            Spacer(),
                            Text("50% Done")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: [
                            Text("Status:  "),
                            Text("Ongoing task",style: TextStyle(color: Colors.blue),)
                          ],
                        ),
                      ),
                       Padding(
                         padding: const EdgeInsets.symmetric(vertical: 5),
                         child: Row(
                           children: [
                             Text("Start date:  "),
                             Text("12-05-2025")
                           ],
                         ),
                       ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Text("Expeted completion:  "),
                              Text("12-06-2025")
                            ],
                          ),
                        ),
        
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                           Text("piority"),
                           SizedBox(width: 20,),
                                   Text("High",style: TextStyle(color: Colors.red),),
                                   Spacer(),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              
                              color: Colors.blue
                  
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                children: [
                                 
                                   
                                  Text("Mark as done",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                  ),),
                                ],
                              ),
                            )),),
                  
                        ],
                      ),
                      SizedBox(height: 10,),
                      Divider(color: Colors.black,)
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
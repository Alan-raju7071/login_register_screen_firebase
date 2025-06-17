import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/widgets/circular_indicator.dart';

class TaskTrackerScreen extends StatelessWidget {
  const TaskTrackerScreen({super.key});

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
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                            Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text("Responsive Design",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.green
                            ),),
                          ),
                          Spacer(),
                           Text("Due Date: 18-06-2025")
                                     
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Status:",style: TextStyle(
                            fontSize: 16
                          ),),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.grey,
                          ),
                           Text("Not started"),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.grey,
                          ),
                           Text("In progress"),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.grey,
                          ),
                           Text("Completed"),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.grey,
                          ),
                           Text("Overdue"),
                         
                                    
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                Text("Progress"),
                                SizedBox(width: 15,),
                             
                            circular_indicator(percentage: 0.45) ],
                            ),
                          ),
                          SizedBox(
                            child: Row(
                              children: [
                                Icon(Icons.timer,color: Colors.orange,),
                             
                            Text("2 days \remaining",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(
                              color: Colors.orange
                            ),), ],
                            ),
                          ),
                      
                      
                           SizedBox(
                             child: Row(
                               children: [
                                  Icon(Icons.edit),
                              
                          Text("Assingned by \option",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(
                            
                          ),), ],
                             ),
                           ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          Text("priority"),
                          SizedBox(width: 20,),
                          Text("Low"),
                            SizedBox(width: 20,),
                          Text("Medium"),
                            SizedBox(width: 20,),
                          Text("High"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                Icon(Icons.radio_button_checked),
                                Text("sort")
                              ],
                            ),
                          ),SizedBox(
                            child: Row(
                              children: [
                                Icon(Icons.radio_button_checked),
                                Text("update")
                              ],
                            ),
                          ),
                           SizedBox(
                            child: Row(
                              children: [
                                Icon(Icons.radio_button_checked,color: Colors.green,),
                                Text("complete")
                              ],
                            ),
                          ),
                      
                      
                        ],
                      ),
                    ),
                    Divider()
                  ],
                ),
              ),
            ),





            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                            Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text("Responsive Design",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.green
                            ),),
                          ),
                          Spacer(),
                           Text("Due Date: 18-06-2025")
                                     
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Status:",style: TextStyle(
                            fontSize: 16
                          ),),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.grey,
                          ),
                           Text("Not started"),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.grey,
                          ),
                           Text("In progress"),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.grey,
                          ),
                           Text("Completed"),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.grey,
                          ),
                           Text("Overdue"),
                         
                                    
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                Text("Progress"),
                                 SizedBox(width: 15,),
                             
                           circular_indicator(percentage: 0.69) ],
                            ),
                          ),
                          SizedBox(
                            child: Row(
                              children: [
                                Icon(Icons.timer,color: Colors.orange,),
                             
                            Text("2 days \remaining",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(
                              color: Colors.orange
                            ),), ],
                            ),
                          ),
                      
                      
                           SizedBox(
                             child: Row(
                               children: [
                                  Icon(Icons.edit),
                              
                          Text("Assingned by \option",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(
                            
                          ),), ],
                             ),
                           ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          Text("priority"),
                          SizedBox(width: 20,),
                          Text("Low"),
                            SizedBox(width: 20,),
                          Text("Medium"),
                            SizedBox(width: 20,),
                          Text("High"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                Icon(Icons.radio_button_checked),
                                Text("sort")
                              ],
                            ),
                          ),SizedBox(
                            child: Row(
                              children: [
                                Icon(Icons.radio_button_checked,color: Colors.green,),
                                Text("update")
                              ],
                            ),
                          ),
                           SizedBox(
                            child: Row(
                              children: [
                                Icon(Icons.radio_button_checked),
                                Text("complete")
                              ],
                            ),
                          ),
                      
                      
                        ],
                      ),
                    ),
                    Divider()
                  ],
                ),
              ),
            ),






            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                            Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text("Responsive Design",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.green
                            ),),
                          ),
                          Spacer(),
                           Text("Due Date: 18-06-2025")
                                     
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Status:",style: TextStyle(
                            fontSize: 16
                          ),),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.grey,
                          ),
                           Text("Not started"),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.grey,
                          ),
                           Text("In progress"),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.grey,
                          ),
                           Text("Completed"),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.grey,
                          ),
                           Text("Overdue"),
                         
                                    
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                Text("Progress"),
                                 SizedBox(width: 15,),
                                 circular_indicator(percentage: 0.75)
                             
                            ],
                            ),
                          ),
                          SizedBox(
                            child: Row(
                              children: [
                                Icon(Icons.timer,color: Colors.orange,),
                             
                            Text("2 days \remaining",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(
                              color: Colors.orange
                            ),), ],
                            ),
                          ),
                      
                      
                           SizedBox(
                             child: Row(
                               children: [
                                  Icon(Icons.edit),
                              
                          Text("Assingned by \option",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(
                            
                          ),), ],
                             ),
                           ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:5),
                      child: Row(
                        children: [
                          Text("priority"),
                          SizedBox(width: 20,),
                          Text("Low"),
                            SizedBox(width: 20,),
                          Text("Medium"),
                            SizedBox(width: 20,),
                          Text("High"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                Icon(Icons.radio_button_checked,color: Colors.green),
                                Text("sort")
                              ],
                            ),
                          ),SizedBox(
                            child: Row(
                              children: [
                                Icon(Icons.radio_button_checked),
                                Text("update")
                              ],
                            ),
                          ),
                           SizedBox(
                            child: Row(
                              children: [
                                Icon(Icons.radio_button_checked,),
                                Text("complete")
                              ],
                            ),
                          ),
                      
                      
                        ],
                      ),
                    ),
                    Divider()
                  ],
                ),
              ),
            ),





            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                            Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text("Responsive Design",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.green
                            ),),
                          ),
                          Spacer(),
                           Text("Due Date: 18-06-2025")
                                     
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Status:",style: TextStyle(
                            fontSize: 16
                          ),),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.grey,
                          ),
                           Text("Not started"),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.grey,
                          ),
                           Text("In progress"),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.grey,
                          ),
                           Text("Completed"),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.grey,
                          ),
                           Text("Overdue"),
                         
                                    
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                Text("Progress"),
                                 SizedBox(width: 15,),
                             
                           circular_indicator(percentage: 0.39) ],
                            ),
                          ),
                          SizedBox(
                            child: Row(
                              children: [
                                Icon(Icons.timer,color: Colors.orange,),
                             
                            Text("2 days \remaining",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(
                              color: Colors.orange
                            ),), ],
                            ),
                          ),
                      
                      
                           SizedBox(
                             child: Row(
                               children: [
                                  Icon(Icons.edit),
                              
                          Text("Assingned by \option",maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(
                            
                          ),), ],
                             ),
                           ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          Text("priority"),
                          SizedBox(width: 20,),
                          Text("Low"),
                            SizedBox(width: 20,),
                          Text("Medium"),
                            SizedBox(width: 20,),
                          Text("High"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                Icon(Icons.radio_button_checked),
                                Text("sort")
                              ],
                            ),
                          ),SizedBox(
                            child: Row(
                              children: [
                                Icon(Icons.radio_button_checked),
                                Text("update")
                              ],
                            ),
                          ),
                           SizedBox(
                            child: Row(
                              children: [
                                Icon(Icons.radio_button_checked,color: Colors.green,),
                                Text("complete")
                              ],
                            ),
                          ),
                      
                      
                        ],
                      ),
                    ),
                    Divider()
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


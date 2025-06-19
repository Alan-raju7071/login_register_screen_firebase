import 'package:flutter/material.dart';

class tabbar extends StatelessWidget {
  const tabbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabAlignment: TabAlignment.start,
      isScrollable: true,
       unselectedLabelColor: Colors.black,
           unselectedLabelStyle: TextStyle(
             fontWeight: FontWeight.normal,
           ),
            indicatorSize: TabBarIndicatorSize.tab,
            labelStyle: TextStyle(
             fontWeight: FontWeight.bold,
            ),
            labelColor: Colors.white,
             indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue
               ),
            dividerHeight: 0,
      tabs: [
      Tab(child: Row(
      
      children: [
        Icon(Icons.date_range),
        SizedBox(width: 8),
        Text("Mytask"),
      ],
    ),),
       Tab(child: Row(
      
      children: [
        Icon(Icons.hourglass_bottom),
        SizedBox(width: 8),
        Text("Task tracker"),
      ],
    ),),
        Tab(child: Row(
      
      children: [
        Icon(Icons.restart_alt),
        SizedBox(width: 8),
        Text("Ongoing \& pending task"),
      ],
    ),),
         Tab(child: Row(
      
      children: [
        Icon(Icons.folder),
        SizedBox(width: 8),
        Text("Working summary"),
      ],
    ),),
      
    ]);
  }
}

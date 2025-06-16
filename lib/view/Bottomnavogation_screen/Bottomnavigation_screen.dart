
import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/view/Homescreen%20copy/Homescreen.dart';
import 'package:login_register_screen_firebase/view/history_screen/historyscree.dart';
import 'package:login_register_screen_firebase/view/leavescreen/leavescreen.dart';
import 'package:login_register_screen_firebase/view/profilescreen/profilescreen.dart';


class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int SelectedTab=0;
  List Screens=[
    Homescreen(),
    Historyscree(),
    Leavescreen(),
    Profilescreen()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[SelectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: SelectedTab,
        onTap: (value) {
          SelectedTab=value;
          setState(() {
            
          });
        },
        selectedItemColor:Colors.white ,
        backgroundColor: Colors.green,
        
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home" ),
           BottomNavigationBarItem(icon:Icon(Icons.list),label: "History" ),
            BottomNavigationBarItem(icon:Icon(Icons.arrow_forward),label: "Leave" ),
             BottomNavigationBarItem(icon:Icon(Icons.person),label: "Profile" ),

      ]),

    );
  }
}

import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/view/Homescreen%20copy/Homescreen.dart';
import 'package:login_register_screen_firebase/view/Profile_screen/Profile_screen.dart';
import 'package:login_register_screen_firebase/view/history_screen/historyscree.dart';
import 'package:login_register_screen_firebase/view/leavescreen/leavescreen.dart';





class Bootomnavigationbarscreen extends StatefulWidget {
  final Widget? overlayScreen; 
  final int selectedIndex;

  const Bootomnavigationbarscreen.BottomNavigationScreen({super.key, this.overlayScreen, this.selectedIndex = 0});

  @override
  State<Bootomnavigationbarscreen> createState() => _BootomnavigationbarscreenState();
}

class _BootomnavigationbarscreenState extends State<Bootomnavigationbarscreen> {
  late int _currentIndex;

  final List<Widget> _tabs = [
    Homescreen(),
    Historyscree(),
    Leavescreen(),
    ProfileScreen()
  ];

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.selectedIndex;
  }

 void _onTabTapped(int index) {
  setState(() {
    _currentIndex = index;
  });

  if (widget.overlayScreen != null) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Bootomnavigationbarscreen.BottomNavigationScreen(
          selectedIndex: index,
        ),
      ),
    );
  }
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _tabs[_currentIndex],
          if (widget.overlayScreen != null)
            Positioned.fill(
              child: widget.overlayScreen!,
            ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        selectedItemColor: Colorconstant.primaryblue,
        unselectedItemColor: Colorconstant.darkgrey,
        backgroundColor: Colorconstant.primarywhite,
        
        
        type: BottomNavigationBarType.fixed,
       items: [
  
  BottomNavigationBarItem(
    icon: Icon(
      Icons.home,size: 25,
      color: _currentIndex == 0 ? Colorconstant.primaryblue : Colorconstant.darkgrey,
    ),
    label: "Home",
  ),

  
  BottomNavigationBarItem(
    icon: Container(
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: _currentIndex == 1 ? Colorconstant.primaryblue : Colorconstant.darkgrey,
        borderRadius: BorderRadius.circular(2)

            ),
      child: Icon(
        Icons.list,size: 20,
        color: Colorconstant.primarywhite,
      ),
    ),
    label: "History",
  ),

  
  BottomNavigationBarItem(
    icon: Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: _currentIndex == 2 ? Colorconstant.primaryblue : Colorconstant.darkgrey,
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.arrow_forward,size: 20,
        color:  Colorconstant.primarywhite,
      ),
    ),
    label: "Leave",
  ),

  
  BottomNavigationBarItem(
    icon: Icon(
      Icons.person,
      color: _currentIndex == 3 ? Colorconstant.primaryblue : Colorconstant.darkgrey,
    ),
    label: "Profile",
  ),
],


      ),
    );
  }
}

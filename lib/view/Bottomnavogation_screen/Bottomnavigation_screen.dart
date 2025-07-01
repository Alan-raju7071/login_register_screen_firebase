
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
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "History"),
          BottomNavigationBarItem(icon: Icon(Icons.arrow_forward), label: "Leave"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

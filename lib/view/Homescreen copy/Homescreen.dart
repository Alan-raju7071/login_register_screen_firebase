import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/widgets/appbar_title.dart';
import 'package:login_register_screen_firebase/widgets/checkin_checkout_container.dart';
import 'package:login_register_screen_firebase/widgets/dashboard.dart';
import 'package:login_register_screen_firebase/widgets/overview_container.dart';
import 'package:login_register_screen_firebase/widgets/tabbar.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: appbar_title(),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(Icons.notifications, color: Colors.white),
              ),
            ),
            SizedBox(width: 10),
          ],
        ),
        body: SingleChildScrollView( 
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CheckInCheckOutContainer(),
              SizedBox(height: 10),
              Text(
                "Overview",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              over_view_container(),
              SizedBox(height: 10),
              SizedBox( child: Tabbarscreen()), 
              SizedBox(height: 20),
              Text(
                "Dashboard",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              dashboard(),
            ],
          ),
        ),
      ),
    );
  }
}

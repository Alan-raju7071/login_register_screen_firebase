import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/controller/punchin_controller.dart';
import 'package:login_register_screen_firebase/view/Bottomnavogation_screen/Bottomnavigation_screen.dart';
import 'package:login_register_screen_firebase/view/Notification_screen/Notification_screen.dart';
import 'package:login_register_screen_firebase/widgets/appbar_title.dart';
import 'package:login_register_screen_firebase/widgets/checkin_checkout_container.dart';
import 'package:login_register_screen_firebase/widgets/dashboard.dart';
import 'package:login_register_screen_firebase/widgets/overview_container.dart';
import 'package:login_register_screen_firebase/widgets/tabbar.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final punchController = Provider.of<PunchController>(context);

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
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(_createSlideRoute());
                },
                child: const CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.notifications, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(width: 10),
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CheckInCheckOutContainer(),
              const SizedBox(height: 10),
              const Text(
                "Overview",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const over_view_container(),
              const SizedBox(height: 10),

              
              if (punchController.hasPunchedIn) ...[
                 SizedBox(child: Tabbarscreen()),
                
              ],
               SizedBox(height: 10),
                 Text(
                  "Dashboard",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const dashboard(),
            ],
          ),
        ),
      ),
    );
  }

  Route _createSlideRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          Bootomnavigationbarscreen.BottomNavigationScreen(
        selectedIndex: 0,
        overlayScreen: NotificationScreen(),
      ),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        final tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/controller/logincontroller.dart';
import 'package:login_register_screen_firebase/controller/punchin_controller.dart';
import 'package:login_register_screen_firebase/controller/registration_controller.dart';
import 'package:login_register_screen_firebase/firebase_options.dart';
import 'package:login_register_screen_firebase/view/Bottomnavogation_screen/Bottomnavigation_screen.dart';
import 'package:login_register_screen_firebase/view/Homescreen%20copy/Homescreen.dart';
import 'package:login_register_screen_firebase/view/ReportScreen/Report_screen.dart';
import 'package:login_register_screen_firebase/view/login_screen/login_screen.dart';
import 'package:provider/provider.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Logincontroller(),),
         ChangeNotifierProvider(create: (context) => RegistrationController()),
         ChangeNotifierProvider(create: (context) => PunchController())
       
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Homescreen()
      
      ),
    );
  }
}
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(
    Myapp()
  );
}
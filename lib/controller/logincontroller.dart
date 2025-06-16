import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/view/Bottomnavogation_screen/Bottomnavigation_screen.dart';

import 'package:login_register_screen_firebase/view/homescreen/homescreen.dart'; 

class Logincontroller with ChangeNotifier {
  bool isloading = false;

  Future<void> onlogin({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      isloading = true;
      notifyListeners();

      final UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const BottomNavigationScreen()),
      );
    } on FirebaseAuthException catch (e) {
      String message = 'Login failed';
      if (e.code == 'user-not-found') {
        message = 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        message = 'Wrong password.';
      }

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
    } finally {
      isloading = false;
      notifyListeners();
    }
  }
}

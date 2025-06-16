import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/utils/app_utils.dart';

class RegistrationController with ChangeNotifier {
  bool isloading = false;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> onregistration({
    required String email,
    required String password,
    required BuildContext context,
    required String name,
    required String phone,
  }) async {
    isloading = true;
    notifyListeners();

    try {
      final credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final uid = credential.user?.uid;
      if (uid == null) {
        throw Exception("User UID is null.");
      }

      
      await _firestore.collection('users').doc(uid).set({
        'name': name,
        'phone': phone,
        'email': email,
        'createdAt': Timestamp.now(),
      });

      
      AppUtils.showonetimesnackbar(
        bg: Colors.green,
        context: context,
        message: 'Registration successful',
      );

    
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        AppUtils.showonetimesnackbar(
          context: context,
          message: 'The password provided is too weak.',
        );
      } else if (e.code == 'email-already-in-use') {
        AppUtils.showonetimesnackbar(
          context: context,
          message: 'The account already exists for that email.',
        );
      } else {
        AppUtils.showonetimesnackbar(
          context: context,
          message: 'Registration failed: ${e.message}',
        );
      }
    } catch (e) {
      log('Registration error: $e');
      AppUtils.showonetimesnackbar(
        context: context,
        message: 'An unexpected error occurred.',
      );
    }

    isloading = false;
    notifyListeners();
  }
}

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegistrationController with ChangeNotifier {
  bool isloading=false;
  Future<void> onregistration(
    {required String email,required String password}
  ) async {
    isloading=true;
    notifyListeners();
    try {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email,
    password: password,
    
  );
  log(credential.user?.uid.toString() ??"no data");
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
  }
} catch (e) {
  print(e);
  isloading=false;
  notifyListeners();
}
  }


}
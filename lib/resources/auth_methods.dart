import 'dart:typed_data';

import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<String> signUpUser(
      {required String email,
      required String passowrd,
      required String username,
      required String bio,
      required Uint8List file}) async {
    String response = 'Some Error occured';
    try {
      if (email.isNotEmpty ||
          passowrd.isNotEmpty ||
          username.isNotEmpty ||
          bio.isNotEmpty ||
          file.isNotEmpty) {
        UserCredential credentials = await _auth.createUserWithEmailAndPassword(
            email: email, password: passowrd);
      }
    } catch (e) {
      response = e.toString();
    }
  }
}

import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:instagram_clone/resources/storage_method.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Future<bool> signUpUser({
    required String email,
    required String passowrd,
    required String username,
    required String bio,
    required Uint8List file,
  }) async {
    bool response = false;
    try {
      if (email.isNotEmpty ||
          passowrd.isNotEmpty ||
          username.isNotEmpty ||
          bio.isNotEmpty) {
        UserCredential credentials = await _auth.createUserWithEmailAndPassword(
            email: email, password: passowrd);
      String photoUrl  = await StorageMethod().uploadImageToFirebaseStorage('profilePictures', file, false, _auth.currentUser!.uid);
        var data = {
          'email': email,
          'username': username,
          'bio': bio,
          'uid': credentials.user!.uid,
          'photoUrl' : photoUrl,
          'followers': [],
          'following': [],
        };
        await _firestore
            .collection("users")
            .doc(credentials.user!.uid)
            .set(data);
        response = true;
      }
    } catch (e) {
      response = false;
    }
    return response;
  }
}

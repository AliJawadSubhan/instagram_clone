import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';

class StorageMethod {
  final FirebaseStorage storage = FirebaseStorage.instance;
  Future<String> uploadImageToFirebaseStorage(String childName, Uint8List file,
      bool isPost, String currentUserUid) async {
    Reference ref = storage.ref().child(childName).child(currentUserUid);
    UploadTask task = ref.putData(file);
    TaskSnapshot snapshot = await task;
    String downloadUrl = await snapshot.ref.getDownloadURL();
    return downloadUrl;
  }
}

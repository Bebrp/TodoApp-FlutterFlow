import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAD7KfgAzcooByyRuusskKrzZzgPHrd_WM",
            authDomain: "my-awsome-projext.firebaseapp.com",
            projectId: "my-awsome-projext",
            storageBucket: "my-awsome-projext.firebasestorage.app",
            messagingSenderId: "586096913586",
            appId: "1:586096913586:web:756a1cb30b5173266b2dab"));
  } else {
    await Firebase.initializeApp();
  }
}

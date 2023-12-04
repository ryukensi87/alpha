import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDtPjIQ_qZWddmJB9-kREOTMX746xayQxE",
            authDomain: "alpha-d758d.firebaseapp.com",
            projectId: "alpha-d758d",
            storageBucket: "alpha-d758d.appspot.com",
            messagingSenderId: "428932700588",
            appId: "1:428932700588:web:042cbbab2b0bf966fdc209",
            measurementId: "G-L5K1Z426H2"));
  } else {
    await Firebase.initializeApp();
  }
}

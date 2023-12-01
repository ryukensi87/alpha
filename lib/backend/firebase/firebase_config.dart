import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCqI4_razoa8X1WqB2TZZL4IpfiHgXhqgM",
            authDomain: "alpha-5a532.firebaseapp.com",
            projectId: "alpha-5a532",
            storageBucket: "alpha-5a532.appspot.com",
            messagingSenderId: "54618337042",
            appId: "1:54618337042:web:b5bbb549afb732a07d8dcb"));
  } else {
    await Firebase.initializeApp();
  }
}

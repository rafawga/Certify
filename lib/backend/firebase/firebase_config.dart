import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAQihzQdMypSkBWPkBtIbxQqwEzwLI6xZQ",
            authDomain: "easy-certificates-y874s2.firebaseapp.com",
            projectId: "easy-certificates-y874s2",
            storageBucket: "easy-certificates-y874s2.appspot.com",
            messagingSenderId: "483930210525",
            appId: "1:483930210525:web:d74ab33f17c86e20ce9b34"));
  } else {
    await Firebase.initializeApp();
  }
}

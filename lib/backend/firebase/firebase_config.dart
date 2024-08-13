import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAm6D_gvIeKC-q5crTvHmsqZLyiCS2WnNk",
            authDomain: "certify-br.firebaseapp.com",
            projectId: "certify-br",
            storageBucket: "certify-br.appspot.com",
            messagingSenderId: "30196978383",
            appId: "1:30196978383:web:efeaf3b17f73af39501dba",
            measurementId: "G-XFPMV25PY5"));
  } else {
    await Firebase.initializeApp();
  }
}

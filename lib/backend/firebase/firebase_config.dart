import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCm2rIdG4y3HYP-oVwmoDgjr6JX9k5V3WI",
            authDomain: "agent-double-cc1nrm.firebaseapp.com",
            projectId: "agent-double-cc1nrm",
            storageBucket: "agent-double-cc1nrm.appspot.com",
            messagingSenderId: "1012176445756",
            appId: "1:1012176445756:web:b0d542f42fdd8ec3673e39"));
  } else {
    await Firebase.initializeApp();
  }
}

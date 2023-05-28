import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDstOVBnAkqoN9nlTP3l5204DaoJo_mQss",
            authDomain: "genconnect-eafe5.firebaseapp.com",
            projectId: "genconnect-eafe5",
            storageBucket: "genconnect-eafe5.appspot.com",
            messagingSenderId: "585848354252",
            appId: "1:585848354252:web:6f4f9240fda271506fd969",
            measurementId: "G-5DKRGM7JS2"));
  } else {
    await Firebase.initializeApp();
  }
}

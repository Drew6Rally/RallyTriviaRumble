import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAME7lWKSo_4NtWnjO34QfzskqCE5qYWW0",
            authDomain: "rallytriviarumble-c0ec3.firebaseapp.com",
            projectId: "rallytriviarumble-c0ec3",
            storageBucket: "rallytriviarumble-c0ec3.firebasestorage.app",
            messagingSenderId: "1002867618099",
            appId: "1:1002867618099:web:919a43003344443ca68e46",
            measurementId: "G-14Q27DCE12"));
  } else {
    await Firebase.initializeApp();
  }
}

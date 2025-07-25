import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAhMIYUJpnDsaYbwqfz6lTVrWzAzYL-yUI",
            authDomain: "bite-right-3rgh29.firebaseapp.com",
            projectId: "bite-right-3rgh29",
            storageBucket: "bite-right-3rgh29.firebasestorage.app",
            messagingSenderId: "805863827502",
            appId: "1:805863827502:web:db71f2b348a1da0a8397bf"));
  } else {
    await Firebase.initializeApp();
  }
}

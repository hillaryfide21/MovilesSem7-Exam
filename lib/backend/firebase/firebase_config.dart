import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAEDSflulsvzflwvd5b2oVRD30g48HcNCU",
            authDomain: "examen1instrumentos.firebaseapp.com",
            projectId: "examen1instrumentos",
            storageBucket: "examen1instrumentos.appspot.com",
            messagingSenderId: "228401303918",
            appId: "1:228401303918:web:27b31bed01cdf60fcfb17f",
            measurementId: "G-548CD1H3JN"));
  } else {
    await Firebase.initializeApp();
  }
}

import 'package:cvd_risk_analyser/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';


//instances of google firebase were moved here so they can be accessed easily
FirebaseAuth auth = FirebaseAuth.instance;
Future<FirebaseApp> firebaseInitialization = Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
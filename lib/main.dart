import 'package:cvd_risk_analyser/HomePage.dart';
import 'package:cvd_risk_analyser/controllers/auth_controller.dart';
import 'package:cvd_risk_analyser/controllers/login_controller.dart';
import 'package:cvd_risk_analyser/controllers/navigation_controller.dart';
import 'package:cvd_risk_analyser/controllers/report_controller.dart';
import 'package:cvd_risk_analyser/controllers/user_data_controller.dart';
import 'package:cvd_risk_analyser/database/database_service.dart';
import 'package:cvd_risk_analyser/firebase/firebase_instances.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await firebaseInitialization.then((_) {
    Get.put(AuthController());
  });

  ///Use for testing purposes only

  ///This will logout the user everytime the app cold starts
  // await AuthController.authInstance.signOut();

  ///This will delete the database everytime the app cold starts
  // await DatabaseService().dropDatabase();


  await Get.putAsync(() => UserDataController.create());
  Get.put(LoginController());
  Get.put(NavigationController());
  await Get.putAsync(() => ReportController.create());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "CVD Risk Analyser",
      home: HomePage(),
    );
  }
}

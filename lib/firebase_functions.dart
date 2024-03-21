import 'package:cloud_firestore/cloud_firestore.dart';
import 'main.dart';
import 'firebase_options.dart';
  
// Function to upload lab chart data to Firestore
Future<void> uploadLabchartData(
  String age, String gender, String sbpp, String diabetic, String cholesterol, String smoke, String cvdLevel) async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  // Upload data to Firestore
  await firestore.collection('labchart_data').add({
    'email': "test@gmail.com",
    'age': age,
    'gender': gender,
    'SBPP': sbpp,
    'diabetic': diabetic,
    'cholesterol': cholesterol,
    'smoke': smoke,
    'cvdLevel': cvdLevel,
  });
  print ("LabChart data upload, CVD level =  $cvdLevel");
}

// Function to upload non-lab chart data to Firestore
Future<void> uploadNonLabchartData(
    String age, String gender, String height, String weight, String sbpp, String smoke, String cvdLevel) async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  // Upload data to Firestore
  await firestore.collection('non_labchart_data').add({
    'email': "test@gmail.com",
    'age': age,
    'gender': gender,
    'height': height,
    'weight': weight,
    'SBPP': sbpp,
    'smoke': smoke,
    'cvdLevel': cvdLevel,
  });
  print ("NonLabChart data upload,  CVD level =  $cvdLevel");
}

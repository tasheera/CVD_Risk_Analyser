import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cvd_risk_analyser/nonlabdocShow.dart';


/**
 * shows Screen for  NON LAB BASE CHART
 */

class DataScreen extends StatefulWidget {
  @override
  _DataScreenState createState() => _DataScreenState();
}

String age = '';
  String gender = '';
  String height = '';
  String weight = '';
  String SBPP = '';
  String smoke = '';
  String cvdLevel = '';

 void fetchS(Map<String, dynamic> data) {
    age = data['age'];
    gender = data['gender'];
    height = data['height'];
    weight = data['weight'];
    SBPP = data['SBPP'];
    smoke = data['Smoke'];
    cvdLevel = data['CVD Level'];
  }



class _DataScreenState extends State<DataScreen> {
  // Define variables to store input data

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Non Lab base chart History'),
      ),
      //backgroundColor: Color.fromRGBO(195, 250,, opacity),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Age
            Row(
              children: [
                Text(
                  'Age:',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  age,
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),

            //gender

            Row(
              children: [
                Text(
                  'Gender:',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  gender,
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),

            //height

            Row(
              children: [
                Text(
                  'Height:',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  height,
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),

//weight
            Row(
              children: [
                Text(
                  'Weight:',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  weight,
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),

            //Pressure Level

            Row(
              children: [
                Text(
                  'SBPP:',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  SBPP,
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),

            //smoke
            Row(
              children: [
                Text(
                  'Smoke Or non smoke:',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  smoke,
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),

            //cvdlevel

            Row(
              children: [
                Text(
                  'CVD Level:',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  cvdLevel,
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



// Initialize Firebase
Future<void> initializeFirebase() async {
  await Firebase.initializeApp();
}

// Function to fetch data from Firestore
Future<void> fetchData() async {
  await initializeFirebase(); // Ensure Firebase is initialized

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  // Retrieve lab chart data from Firestore
  QuerySnapshot labchartSnapshot =
      await firestore.collection('labchart_data').get();
  List<QueryDocumentSnapshot> labchartDocuments = labchartSnapshot.docs;

  // Iterate over lab chart documents
  for (QueryDocumentSnapshot doc in labchartDocuments) {
    Map<String, dynamic>? data =
        doc.data() as Map<String, dynamic>?; // Explicit cast
    if (data != null) {
      // Pass data to fetch function
      fetchS(data);
    }
  }

  // Retrieve non-lab chart data from Firestore
  QuerySnapshot nonLabchartSnapshot =
      await firestore.collection('non_labchart_data').get();
  List<QueryDocumentSnapshot> nonLabchartDocuments = nonLabchartSnapshot.docs;

  // Iterate over non-lab chart documents
  for (QueryDocumentSnapshot doc in nonLabchartDocuments) {
    Map<String, dynamic>? data =
        doc.data() as Map<String, dynamic>?; // Explicit cast
    if (data != null) {
      // Pass data to fetch function
      fetchS(data);
    }
  }
}

// // Function to process retrieved data
// void fetchS(Map<String, dynamic> data) {
//   // Process the data as needed
//   print('Retrieved data: $data');
// // }

// void main() async {
//   // Fetch data from Firestore
//   await fetchData();
// }

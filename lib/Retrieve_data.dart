import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
      fetch(data);
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
      fetch(data);
    }
  }
}

// Function to process retrieved data
void fetch(Map<String, dynamic> data) {
  // Process the data as needed
  print('Retrieved data: $data');
}

void main() async {
  // Fetch data from Firestore
  await fetchData();
}

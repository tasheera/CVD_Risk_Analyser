import 'package:cvd_risk_analyser/components/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:cvd_risk_analyser/prediction_data_save_and_retrive_functions.dart';
import 'package:cvd_risk_analyser/models/Report.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Report> reports = [];
    try {
      reports = fetchData();
    } catch (e) {
      print('Error fetching data: $e');
    }

    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(),
      body: SafeArea(
        child: reports.isEmpty
            ? Center(
                child: Text('No history recorded. Please take the test first.'),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Previous Result Information:'),
                  SizedBox(height: 20),
                  // Print out the report
                  Text('"Age": ${reports[0].predictAge}'),
                  SizedBox(height: 10), 
                  Text('"Gender": ${reports[0].predictGender}'),
                  SizedBox(height: 10), 
                  Text('"Weight : ${reports[0].predictGender}"'),
                  SizedBox(height: 10), 
                  Text('"Height : ${reports[0].predictGender}"'),
                  SizedBox(height: 10), 
                  Text('"Systolic Blood Pressure : ${reports[0].predictGender}"'),
                  SizedBox(height: 10), 
                  Text('"Diastolic Blood Pressure : ${reports[0].predictGender}"'),
                  SizedBox(height: 10), 
                  Text('"Cholesterol : ${reports[0].predictGender}"'),
                  SizedBox(height: 10), 
                  Text('"Glucose : ${reports[0].predictGender}"'),
                  SizedBox(height: 10), 
                  Text('"Smoking Status: ${reports[0].predictGender}"'),
                  SizedBox(height: 10), 
                  Text('"Alcohol Intake : ${reports[0].predictGender}"'),
                  SizedBox(height: 10), 
                  Text('"Physcal Activity : ${reports[0].predictGender}"'),
                  SizedBox(height: 10), 
                  Text('"Cardio vascualar diease Prediction : ${reports[0].predictGender}"'),
                ],
              ),
      ),
    );
  }
}

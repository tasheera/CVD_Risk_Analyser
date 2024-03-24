import 'package:cvd_risk_analyser/components/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:cvd_risk_analyser/prediction_data_save_and_retrive_functions.dart';
import 'package:cvd_risk_analyser/models/Report.dart';

//report screen. style as you wish
class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Report> reports = fetchData();
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Previous Result Information:  '),
              SizedBox(height: 20), 
              // Print out the report
              Text('"Age": ${reports[0].predictAge}'),
              SizedBox(height: 10), 
              Text('"Gender": ${reports[1].predictGender}'),
              SizedBox(height: 10), 
              Text('"Weight : ${reports[1].predictGender}"'),
              SizedBox(height: 10), 
              Text('"Height : ${reports[1].predictGender}"'),
              SizedBox(height: 10), 
              Text('"Systolic Blood Pressure : ${reports[1].predictGender}"'),
              SizedBox(height: 10), 
              Text('"Diastolic Blood Pressure : ${reports[1].predictGender}"'),
              SizedBox(height: 10), 
              Text('"Cholesterol : ${reports[1].predictGender}"'),
              SizedBox(height: 10), 
              Text('"Glucose : ${reports[1].predictGender}"'),
              SizedBox(height: 10), 
              Text('"Smoking Status: ${reports[1].predictGender}"'),
              SizedBox(height: 10), 
              Text('"Alcohol Intake : ${reports[1].predictGender}"'),
              SizedBox(height: 10), 
              Text('"Physcal Activity : ${reports[1].predictGender}"'),
              SizedBox(height: 10), 
              Text('"Cardio vascualar diease Prediction : ${reports[1].predictGender}"'),
            ],
          ),
        ),
      ),
    );
  }
}

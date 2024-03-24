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
                child: Text('No history recorded. Please take the test first and check back here.', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),)
            : ListView(
                padding: EdgeInsets.all(20),
                children: [
                  Text('Previous Result Information:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  for (var report in reports)
                    Column(
                      children: [
                        Card(
                          color: () {
                            if (report.cvdLevel == 'Low Risk') {
                              return Color.fromARGB(255, 198, 235, 198);
                            } else if (report.cvdLevel == 'High Risk') {
                              return Color.fromARGB(255, 233, 131, 124);
                            }
                          }(),
                          child: ListTile(
                            title: Text('Prediction ID: ${report.reportId}'),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 6),
                                Text('Age : ${report.predictAge}'),
                                Text('Gender : ${report.predictGender}'),
                                Text('Weight : ${report.predictWeight}'),
                                Text('Height : ${report.predictHeight}'),
                                Text('Systolic BP : ${report.predictSbp}'),
                                Text('Diastolic BP : ${report.predictDbp}'),
                                Text('Cholesterol Level: ${report.predictCholesterol}'),
                                Text('Glucose Level: ${report.predictGlucose}'),
                                Text('Smoking Status : ${report.predictSmoke}'),
                                Text('Alcohol Intake : ${report.predictAlcohol}'),
                                Text('Physical Activity : ${report.predictPhysical}'),
                                Text('CVD Prediction: ${report.cvdLevel}'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 13), //added space between cards
                      ],
                    ),
                ],
              ),
      ),
    );
  }
}

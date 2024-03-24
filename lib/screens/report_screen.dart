import 'package:cvd_risk_analyser/components/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

//report screen. style as you wish
class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Text('Report Screen'),
        ),
      ),
    );
  }
}

import 'package:cvd_risk_analyser/chart_choose_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "CVD Risk Analyser",
      home: ChartChoose(),
    );
  }
}


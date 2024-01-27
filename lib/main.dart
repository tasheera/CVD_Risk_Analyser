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

class ChartChoose extends StatelessWidget {
  const ChartChoose({super.key});

  @override
  Widget build(BuildContext context) {// return scaffold
    return Scaffold( 
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/chartChoose.png",fit: BoxFit.cover,),// Background Image
        ],
      ),
    );
  }
}

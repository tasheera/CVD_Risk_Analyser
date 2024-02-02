
import 'package:flutter/material.dart';

class DoctorInputScreen extends StatefulWidget {
  const DoctorInputScreen({super.key});

  @override
  State<DoctorInputScreen> createState() => _DoctorInputScreenState();
}

class _DoctorInputScreenState extends State<DoctorInputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Check CVD risk chart below", style: TextStyle(fontSize: 18),),
      ),
    );
  }
}
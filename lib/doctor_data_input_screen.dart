
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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Date\nCheck CVD risk chart below', style: TextStyle(fontSize: 18),),
            Image.asset(
              'assets/data_input_Vector_icon.png', //image file direct
              width: 30, // height of image
              height: 30, // height of image
              ),
            Image.asset(
              'assets/data_input_report_icon.png', //image file direct
              width: 60, // width of image
              height: 60, // height of image
              ),
        
              
            ],
          ),
        
      ),
    );
  }
}
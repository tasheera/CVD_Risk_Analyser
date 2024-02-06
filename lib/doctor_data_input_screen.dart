
import 'package:flutter/material.dart';

class DoctorInputScreen extends StatefulWidget {
  const DoctorInputScreen({super.key});

  @override
  State<DoctorInputScreen> createState() => _DoctorInputScreenState();
}

class _DoctorInputScreenState extends State<DoctorInputScreen> {
  @override
  Widget build(BuildContext context) {
    double iconSize = MediaQuery.of(context).size.width * 0.08; // return current screen width 
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // distribute free space
          children: [
            const Text('Date\nCheck CVD risk chart below', style: TextStyle(fontSize: 18),),
            
            Image.asset(
              'assets/data_input_Vector_icon.png', //image file direct
              width: iconSize*0.7,// adjust width of image using current screen width
              height: iconSize*0.7, // height of image
            ),
              Image.asset(
              'assets/data_input_report_icon.png', //image file direct
              width: iconSize*1.6, // adjust width of image using current screen width
              height: iconSize*1.6, // height of image
            ),
          
            ],
          ),

      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Container(    
              width: iconSize*11,
              height: iconSize*4.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(36),
              color: const Color(0xFFD80032),
              ),
              
              child: Row(
                 //mainAxisAlignment: MainAxisAlignment., // distribute free space
                 children: [
                  
                  Image.asset( // doctor icon
                    'assets/data_input_doctomerImage_icon.png', //image file direct
                    width: iconSize*3.8,// adjust width of image using current screen width
                    height: iconSize*3.8, // height of image
                  ),



                  Text(
                    "Dr name\n possition and hospital",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: iconSize*0.57,
                    ),
                  ),
          
                ],

              ),
            ),
            
          ),

        ],
      ),
    );
  }
}
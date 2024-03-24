import 'package:flutter/material.dart';

/**
 * shows Screen for LAB BASE CHART
 */


  String age = '';
  String gender = '';
  String SBPP = '';
  String diabetic = '';
  String cholesterol = '';
  String smoke = '';
  String cvdLevel = '';




class DataScreen extends StatefulWidget {
  @override
  _DataScreenState createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  // Define variables to store input data
  
  String age = '';
  String gender = '';
  String SBPP = '';
  String diabetic = '';
  String cholesterol = '';
  String smoke = '';
  String cvdLevel = '';
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
      ),
      //backgroundColor: Color.fromRGBO(195, 250,, opacity),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Age
            Row(
              children: [
                Text(
                  'Age:',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  age,
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            //gender
            Row(
              children: [
                Text(
                  'Gender:',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  gender,
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            //Pressure Level
            Row(
              children:[
                Text(
              'SBPP:',
              style: TextStyle(fontSize:15, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              SBPP,
              style: TextStyle(fontSize: 15),
            ),
            ],
            ),

          //diabitics

          Row(
              children:[
                Text(
              'Diabicis level:',
              style: TextStyle(fontSize:15, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              diabetic,
              style: TextStyle(fontSize: 15),
            ),
            ],
            ),

            //cholestrol level
            Row(
              children:[
                Text(
              'Cholestrol level:',
              style: TextStyle(fontSize:15, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              cholesterol,
              style: TextStyle(fontSize: 15),
            ),
            ],
            ),
            
            //smoke
            Row(
              children:[
                Text(
              'Smoke Or non smoke:',
              style: TextStyle(fontSize:15, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              smoke,
              style: TextStyle(fontSize: 15),
            ),
            ],
            ),

            //cvdlevel

            Row(
              children:[
                Text(
              'CVD Level:',
              style: TextStyle(fontSize:15, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              cvdLevel,
              style: TextStyle(fontSize: 15),
            ),
            ],
            ),



            // SizedBox(height:10),
            // Text(
            //   'Age:',
            //   style: TextStyle(fontSize: 6, fontWeight: FontWeight.bold),
            // ),
            // SizedBox(height:10),
            // Text(
            //   age,
            //   style: TextStyle(fontSize: 6),
            // ),
            // SizedBox(height:10),

            // Row(
            //   children: [
            //     Checkbox(
            //       value: isSmoker,
            //       onChanged: (value) {
            //         setState(() {
            //           isSmoker = value!;
            //         });
            //       },
            //     ),
            //     Text(
            //       'Are you a smoker?',
            //       style: TextStyle(fontSize: 16),
            //     ),
            //   ],
            // ),
            // SizedBox(height: 20),
            // ElevatedButton(
            //   onPressed: () {
            //     // Use the input data as needed
            //     //print('Name: $name');
            //     print('Age: $age');
            //   },
            //   child: Text('Submit'),
            // ),
          ],
        ),
      ),
    );
  }
}

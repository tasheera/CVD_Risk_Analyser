import 'package:flutter/material.dart';

/**
 * shows Screen for  NON LAB BASE CHART
 */

class DataScreen extends StatefulWidget {
  @override
  _DataScreenState createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  // Define variables to store input data

  String age = '';
  String gender = '';
  String height = '';
  String weight = '';
  String SBPP = '';
  String smoke = '';
  String cvdLevel = '';
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Non Lab base chart History'),
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

            //height
            
            Row(
              children: [
                Text(
                  'Height:',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  height,
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),

//weight
            Row(
              children: [
                Text(
                  'Weight:',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  weight,
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),



            //Pressure Level

            Row(
              children: [
                Text(
                  'SBPP:',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  SBPP,
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),

            
            //smoke
            Row(
              children: [
                Text(
                  'Smoke Or non smoke:',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
              children: [
                Text(
                  'CVD Level:',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  cvdLevel,
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

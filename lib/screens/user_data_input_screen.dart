import 'package:flutter/material.dart';

import 'input_screen_functions.dart';

class UserInputScreen extends StatefulWidget {
  final String name;
  const UserInputScreen({super.key, required this.name});

  @override
  State<UserInputScreen> createState() => _UserInputScreenState();
}

class _UserInputScreenState extends State<UserInputScreen> {
  
  final GlobalKey <FormState> _formKey =GlobalKey();// create global key object form key validate

  final TextEditingController _ageCVDController = TextEditingController(); // controller for age text field



  @override
  Widget build(BuildContext context) {
    double iconSize = MediaQuery.of(context).size.width * 0.08; // return current screen width 


    return Scaffold(
         
      appBar: AppBar(

        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // distribute free space
          children: [
            Text('Hi ${widget.name}\nCheck you CVD risk below', style: TextStyle(fontSize: iconSize*0.5),),
            Image.asset(
              'assets/data_input_Vector_icon.png', //image file directory
              width: iconSize*0.7,// adjust width of image using current screen width
              height: iconSize*0.7, // height of image
            ),
              TextButton(
                onPressed:(){},
                child: Image.asset(
                'assets/data_input_report_icon.png', //image file direct
                width: iconSize*1.6, // adjust width of image using current screen width
                height: iconSize*1.6, // height of image
                            ),
              ),
          
            ],
          ),

      ),

          body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.asset( // doctor icon
              'assets/user_input_screen_image.png', //image file direct
              width: iconSize*10.8,// adjust width of image using current screen width
              height: iconSize*5.8, // height of image
              ),
            ),

            Form(
                key: _formKey, // assign key of the foam widget which is created in above
                child: Container(
                  margin: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,// left align text
                    children: [

                    buildRiskInputField("Age :","input age between 20 and 80", _isValidAge,"Age should be between 20 and 80",TextInputType.number,_ageCVDController), // create input field
                      

                     
                         
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),


    );
  }
}


// input data vaidation

bool _isValidAge(String input) {
  try {
        int age = int.parse(input);  // check input is int or not
        return age >= 1 && age <= 120; // check reasonable range
  } catch (e) {

    return false; // if there is any error ,return false
  }
}
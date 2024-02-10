
import 'package:flutter/material.dart';

class DoctorInputScreen extends StatefulWidget {
  const DoctorInputScreen({super.key});

  @override
  State<DoctorInputScreen> createState() => _DoctorInputScreenState();
}

class _DoctorInputScreenState extends State<DoctorInputScreen> {


final GlobalKey <FormState> _formKey =GlobalKey();// create global key object form key validate

  final TextEditingController _ageCVDController = TextEditingController(); // controller for age text field
  final TextEditingController _genderCVDController = TextEditingController(); // controller for gender text field
  final TextEditingController _heightCVDController = TextEditingController();// controller for height text field
  final TextEditingController _weightCVDController = TextEditingController();// controller for weight field

// create function for return text filed with parameters
  Widget _buildRiskInputField(String fieldName, validationFunction, error, keyboardType, controller){
    fieldName=fieldName; // assign parameter to local variable
    error=error; // assign parameter to local variable
    
    return Container(
      height: 50, // height of container
      decoration: BoxDecoration( // add decoration to container
        color: Colors.blue.withOpacity(0.09), // opacity gives transparency
        borderRadius: BorderRadius.circular(15),
        border: Border.all(), // add border
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 48, 154, 240).withOpacity(0.11), //  color of the shadow
            offset: const Offset(0, 2), // Offset (vertical, horizontal)
          ),
        ],
      ),

      child: Align(
        alignment: Alignment.center, // center the text in field
        child: TextFormField(
          controller: controller, // assign controller to text field
          keyboardType: keyboardType, // assign key board type
          decoration: InputDecoration(
            hintText: fieldName, // hint text of the text field
            border: const OutlineInputBorder(
              borderSide: BorderSide.none, // remove selected effect in text field
            ),

            hintStyle: const TextStyle(
              color: Color(0xFF858EA9), // color of the hint text
            ),

            contentPadding: const EdgeInsets.symmetric(horizontal: 60), // add extra space before type location of the text field
            
            ),
            
          validator: (value){  // validate use input
            if (value == null || value.isEmpty){// check null or is empty
              return "Can not empty";
              }
              if(!validationFunction(value)){ // assign validate function
                return error; // error message to show
              }
              return null;          
          },
          ),
      ),
    );

  }



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
              'assets/data_input_Vector_icon.png', //image file directory
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

      body: SingleChildScrollView( // enable scroll option
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Container(    
                width: iconSize*11, //width of the container related to current screen
                height: iconSize*4.5, //height of the container related to current screen
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(36),
                color: const Color(0xFFD80032),
                ),
                
                child: Row(
                   children: [
                    
                    Image.asset( // doctor icon
                      'assets/data_input_doctor_Image_icon.png', //image file direct
                      width: iconSize*3.8,// adjust width of image using current screen width
                      height: iconSize*3.8, // height of image
                    ),
        

                    Text(
                      "Dr name\n position and hospital",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: iconSize*0.57,
                      ),
                    ),
            
                  ],
        
                ),
              ),
            ),
            
        
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Previous Result",
                style: TextStyle(fontSize: iconSize*0.6),
                ),
            ),
        


              Container( // used for show previous result
                height: iconSize*3.2,
                width: iconSize*6,
                decoration: BoxDecoration(
                  
                borderRadius: BorderRadius.circular(16),
                
                border: Border.all()
                ),
                child: Center(child: Text("No Previous Result \navailable",


                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: iconSize*0.5

                ),))
              ),
        
        
              Form(
                key: _formKey, // assign key of the foam widget which is created in above
                child: Container(
                  margin: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,// left align text
                    children: [

                      const Text("Age :",style: TextStyle(fontSize: 17,fontFamily: "Oswald"),), // create field name
                      const SizedBox(height: 5,), // add space between name and field
                      _buildRiskInputField("input age between 20 and 80", isValidAge,"Age should be between 20 and 80",TextInputType.number,_ageCVDController), // create input field

                      const SizedBox(height: 10,),

                      const Text("Gender :",style: TextStyle(fontSize: 17,),), // create field name
                      const SizedBox(height: 5,), // add space between name and field
                      _buildRiskInputField("biological male/ female", isValidGender,"Enter male or female",TextInputType.text,_genderCVDController), // create function // create input field


                      const SizedBox(height: 10,),

                      const Text("Height :",style: TextStyle(fontSize: 17,),), // create field name
                      const SizedBox(height: 5,), // add space between name and field
                      _buildRiskInputField("insert in centimeters", isValidHeight,"Enter valid height",TextInputType.number,_heightCVDController), // create input field


                      const SizedBox(height: 10,),

                      const Text("Weight :",style: TextStyle(fontSize: 17,),), // create field name
                      const SizedBox(height: 5,), // add space between name and field
                      _buildRiskInputField("insert in Kilograms", isValidHeight,"Enter valid weight",TextInputType.number,_weightCVDController), // create input field



                      ElevatedButton(
                        onPressed: (){
                          if(_formKey.currentState!.validate()){ // check validity of foam filed
                          print(_ageCVDController.text);
                          print(_genderCVDController.text);
                          print(_heightCVDController.text);
                          print(_weightCVDController.text);
                          }
                          },
                         child: const Text("Save"),)
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


bool isValidAge(String input) {
  try {
        int age = int.parse(input);  // check input is int or not
        return age > 40 && age <= 80; // check reasonable range
  } catch (e) {

    return false; // if there is any error ,return false
  }
}

bool isValidGender(String input) {

  if (input.toLowerCase()=="female" || input.toLowerCase()=="male"){ //  check male or female
    return true;
  }
  return false;
}

bool isValidHeight(String input) {
  try {
        int height = int.parse(input); // check input is int or not
        return height > 40 && height <= 200; // check reasonable range
  } catch (e) {

    return false; // if there is any error ,return false
  }
}

bool isValidWeight(String input) {
  try {
        int weight = int.parse(input); // check input is int or not
        return weight > 40 && weight <= 200; // check reasonable range
  } catch (e) {

    return false; // if there is any error ,return false
  }
}
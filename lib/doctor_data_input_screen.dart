
import 'package:flutter/material.dart';

class DoctorInputScreen extends StatefulWidget {
  const DoctorInputScreen({super.key});

  @override
  State<DoctorInputScreen> createState() => _DoctorInputScreenState();
}

class _DoctorInputScreenState extends State<DoctorInputScreen> {


final GlobalKey <FormState> _formKey =GlobalKey();// create global key object form key validate

  String name="";

  Widget _buildNameField(String fieldName, validationFunction, error, keyboardType){
    fieldName=fieldName;
    error=error;
    
    return Container(
      
      height: 50,
      
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.09),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 48, 154, 240).withOpacity(0.11), // Shadow color
            
            
            offset: const Offset(0, 2), // Offset (vertical, horizontal)
          ),
        ],

      ),
      child: Align(
        alignment: Alignment.center,
        child: TextFormField(
          keyboardType: keyboardType,
          decoration: InputDecoration(
            
            
            

            hintText: fieldName,
                    border: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
            
            
            hintStyle: const TextStyle(
              color: Color(0xFF858EA9),
              
              
              
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 60),
            
            ),
            
          validator: (value){
            if (value == null || value.isEmpty){// check null or is empty
              return "Can not empty";
              }
              if(!validationFunction(value)){
                return error;
              }
              name=value;
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

      body: SingleChildScrollView(
        child: Column(
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
        
        
        
        
              Container(
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
            key: _formKey, // object is created above
            child: Container(
              margin: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,// left align text
                children: [
                  
                  const Text("Age :",style: TextStyle(fontSize: 17,fontFamily: "Oswald"),),
                  const SizedBox(height: 5,),
                  _buildNameField("input age between 20 and 80", isValidAge,"Age should be between 20 and 80",TextInputType.number),

                  const SizedBox(height: 10,),

                  const Text("Gender :",style: TextStyle(fontSize: 17,),),
                  const SizedBox(height: 5,),
                  _buildNameField("biological male/ female", isValidGender,"Enter male or female",TextInputType.text),


                  const SizedBox(height: 10,),

                  const Text("Height :",style: TextStyle(fontSize: 17,),),
                  const SizedBox(height: 5,),
                  _buildNameField("insert in centimeters", isValidHeight,"Enter valid height",TextInputType.number),


                  const SizedBox(height: 10,),

                  const Text("Weight :",style: TextStyle(fontSize: 17,),),
                  const SizedBox(height: 5,),
                  _buildNameField("insert in Kilograms", isValidHeight,"Enter valid weight",TextInputType.number),


        
                  ElevatedButton(
                    onPressed: (){
                      if(_formKey.currentState!.validate()){ // check validity of foam filed
                      print(name);
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
        int age = int.parse(input);
    
    // Check if age is a positive integer within a reasonable range
    return age > 40 && age <= 80;
  } catch (e) {
    // Catch any exception that occurs when parsing the input as an integer
    return false;
  }
}

bool isValidGender(String input) {

  if (input.toLowerCase()=="female" || input.toLowerCase()=="male"){
    return true;
  }
  return false;
}

bool isValidHeight(String input) {
  try {
        int height = int.parse(input);
    
    // Check if age is a positive integer within a reasonable range
    return height > 40 && height <= 200;
  } catch (e) {
    // Catch any exception that occurs when parsing the input as an integer
    return false;
  }
}

bool isValidWeight(String input) {
  try {
        int weight = int.parse(input);
    
    // Check if age is a positive integer within a reasonable range
    return weight > 40 && weight <= 200;
  } catch (e) {
    // Catch any exception that occurs when parsing the input as an integer
    return false;
  }
}
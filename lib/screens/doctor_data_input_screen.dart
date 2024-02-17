
import 'package:cvd_risk_analyser/calculation.dart';
import 'package:flutter/material.dart';

class DoctorInputScreen extends StatefulWidget {
  final int number;
  const DoctorInputScreen({super.key, required this.number});

  @override
  State<DoctorInputScreen> createState() => _DoctorInputScreenState();
}

class _DoctorInputScreenState extends State<DoctorInputScreen> {


final GlobalKey <FormState> _formKey =GlobalKey();// create global key object form key validate

  final TextEditingController _ageCVDController = TextEditingController(); // controller for age text field
  final TextEditingController _genderCVDController = TextEditingController(); // controller for gender text field
  final TextEditingController _heightCVDController = TextEditingController();// controller for height text field
  final TextEditingController _weightCVDController = TextEditingController();// controller for weight field
  final TextEditingController _diabeticCVDController = TextEditingController();// controller for diabetic field
  final TextEditingController _sbpCVDController = TextEditingController();// controller for SBP text field
  final TextEditingController _smokerCVDController = TextEditingController();// controller for smoker text field
  final TextEditingController _cholesterolCVDController = TextEditingController();// controller for cholesterol text field

  Text previousResult=const Text("No Previous Result available",textAlign: TextAlign.center,style: TextStyle(color: Colors.black38, fontSize: 17 ),);


  @override
  Widget build(BuildContext context) {
    double iconSize = MediaQuery.of(context).size.width * 0.08; // return current screen width 
    String chartType= widget.number==3 ? "Lab chart" : "Non- Lab chart";
    
    DateTime dt = DateTime.now();
    String dd="${dt.day}/${dt.month}/${dt.year}";
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // distribute free space
          children: [
            Text('$chartType\t $dd\nCheck CVD risk chart below', style: TextStyle(fontSize: iconSize*0.5),),
            
            Image.asset(
              'assets/data_input_Vector_icon.png', //image file directory
              width: iconSize*0.7,// adjust width of image using current screen width
              height: iconSize*0.7, // height of image
            ),
              TextButton(
                onPressed: () {},
                child: Image.asset(
                'assets/data_input_report_icon.png', //image file direct
                width: iconSize*1.6, // adjust width of image using current screen width
                height: iconSize*1.6, // height of image
                
                ),
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
                child: Center(child: previousResult)
              ),
        
        
              Form(
                key: _formKey, // assign key of the foam widget which is created in above
                child: Container(
                  margin: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,// left align text
                    children: [

                      _buildRiskInputField("Age :","input age between 20 and 80", _isValidAge,"Age should be between 20 and 80",TextInputType.number,_ageCVDController), // create input field

                      _buildRiskInputField("Gender :","biological male/ female", _isValidGender,"Enter male or female",TextInputType.text,_genderCVDController), // create function // create input field

                      if (widget.number==1)_buildRiskInputField("Height :","insert in centimeters", _isValidHeight,"Enter valid height",TextInputType.number,_heightCVDController), // create input field


                      if (widget.number==1)_buildRiskInputField("Weight :","insert in Kilograms", _isValidWeight,"Enter valid weight",TextInputType.number,_weightCVDController), // create input field

                     _buildRiskInputField("SBP Level :","input SBP (mmHg) ", _isValidSBP,"Enter valid SBP level",TextInputType.text,_sbpCVDController), // create function // create input field


                     if (widget.number==3) _buildRiskInputField("Diabetic :","input diabetic level", _isValidSBP,"Enter valid Diabetic",TextInputType.number,_diabeticCVDController), // create input field

                     if (widget.number==3) _buildRiskInputField("Cholesterol level :","insert cholesterol level", _isValidCholesterol,"Enter valid cholesterol level",TextInputType.number,_cholesterolCVDController), // create input field

                    _buildRiskInputField("Smoker :","input yes or no ", _isValidSmoker,"Enter yes or only",TextInputType.text,_smokerCVDController), // create function // create input field


                      const SizedBox(height: 10,),

                      Row(
                        
                        children: [
                           SizedBox(width: iconSize*0.8,),
                          ElevatedButton(
                            
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              fixedSize: Size(iconSize*3.7, iconSize*1.1),
                              
                            ),
                            onPressed: (){
                              calculateRiskLevel(iconSize);
                              },
                             child: Text("Calculate", style: TextStyle(color: Colors.white,fontSize: iconSize*0.5),),
                             ),

                             SizedBox(width: iconSize*2.2,),

                            ElevatedButton(
                            
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              fixedSize: Size(iconSize*3.7, iconSize*1.1),
                              
                            ),
                            onPressed: (){
                                                                     
                              _patientDataClearConfirmBox(context); // call confirmation dialog box
                              
                              },
                             child: Text("Clear", style: TextStyle(color: Colors.white,fontSize: iconSize*0.5),),
                             ),
                             
                        ],
                      ),
                         
                    ],
                  ),
                ),
              ),


          ],
        ),
      ),
    );
  }


  void calculateRiskLevel(double iconSize){

    if(_formKey.currentState!.validate()){ // check validity of foam filed
      print(_ageCVDController.text);
      print(_genderCVDController.text);
      print(_sbpCVDController.text);
      print(_smokerCVDController.text);



      if (widget.number==1){ // check chart type
              print(_heightCVDController.text);
      print(_weightCVDController.text);
      }

      if (widget.number==3){// check chart type
        print(_diabeticCVDController.text);        
        }

        //ToDO add correct details to cvd result

        // get cvd level from calculation
        String cvdLevel=calculation(_ageCVDController.text, _genderCVDController.text, _heightCVDController.text, _weightCVDController.text, _sbpCVDController.text, _smokerCVDController.text);

      // call function to show cvd level
      _showCVDRiskLevel(context,cvdLevel,'Risk of having a CVD in the near future is VERY LOW...!!', const Color(0XFFB6FFB0),const Color(0xFF00D823)); // call result display pop up box
      
      
    }
  }

  void _riskCVDParameterClear(){ // clear the fields input data
    _ageCVDController.clear();
    _genderCVDController.clear();
    _heightCVDController.clear();
    _weightCVDController.clear();
}


  void _patientDataClearConfirmBox(BuildContext context) { // create clear confirmation box
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: const Text("Do you want to clear all patient's data?",style: TextStyle(fontSize: 25),),
          actions: [
            TextButton( // "no" button
              onPressed: () {
                Navigator.of(context).pop(); // close the confirmation box
              },
              child: Container(
                height: 30,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                  
                ),
                child: const Center(
                    child: Text('No', style: TextStyle(color: Colors.white))
                )
              ),
            ),
            TextButton( // "yes" button
              onPressed: () {
                _riskCVDParameterClear(); // clear patient's data
                Navigator.of(context).pop(); // close the confirmation box
              },
              child: Container(
                height: 30,
                width: 40,
                  decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                  
                ),
                child: const Center(
                    child: Text('Yes', style: TextStyle(color: Colors.white))
                )
              ),
            ),
          ],
        );
      },
    );
  }


}



bool _isValidAge(String input) {
  try {
        int age = int.parse(input);  // check input is int or not
        return age >= 40 && age <= 74; // check reasonable range
  } catch (e) {

    return false; // if there is any error ,return false
  }
}

bool _isValidGender(String input) {

  if (input.toLowerCase()=="female" || input.toLowerCase()=="male"){ //  check male or female
    return true;
  }
  return false;
}

bool _isValidHeight(String input) {
  try {
        double height = double.parse(input); // check input is valid or not
        return height > 40 && height <= 250; // check reasonable range
  } catch (e) {

    return false; // if there is any error ,return false
  }
}

bool _isValidWeight(String input) {
  try {
        int weight = int.parse(input); // check input is valid or not
        return weight > 30 && weight <= 150; // check reasonable range
  } catch (e) {

    return false; // if there is any error ,return false
  }
}


bool _isValidSBP(String input) {
  try {
        double height = double.parse(input); // check input is valid or not
        return height > 0 && height <= 180; // check reasonable range
  } catch (e) {

    return false; // if there is any error ,return false
  }
}


bool _isValidSmoker(String input) {
  if (input.toLowerCase()=="yes" || input.toLowerCase()=="no"){ //  check male or female
    return true;
  }
  return false;
}


bool _isValidCholesterol(String input) {
  try {
        double height = double.parse(input); // check input is valid or not
        return height > 0 && height <= 10; // check reasonable range
  } catch (e) {

    return false; // if there is any error ,return false
  }
}


// create function for return text filed with parameters and lable
  Widget _buildRiskInputField(String lableName, String fieldName, validationFunction, String error, TextInputType keyboardType, TextEditingController controller){
    fieldName=fieldName; // assign parameter to local variable
    error=error; // assign parameter to local variable
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,// left align text
      children: [
        Text("$lableName ",style: TextStyle(fontSize: 17,fontFamily: "Oswald"),),
        const SizedBox(height: 5,), // add space between name and field
        Container(
          height: 50, // height of container
          decoration: BoxDecoration( // add decoration to container
            color: Colors.blue.withOpacity(0.09), // opacity gives transparency
            borderRadius: BorderRadius.circular(15),
            border: Border.all(), // add border
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 48, 154, 240).withOpacity(0.11), //  color of the shadow
                offset: const Offset(0, 2), // offset (vertical, horizontal)
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
        ),
          const SizedBox(height: 10,),
      ],
    );

  }










  void _showCVDRiskLevel(BuildContext context, String riskLevel, String message, Color boxColor ,Color riskColor) { // create result display dialog box
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: boxColor,// color of the dialog box
          title: Container(// decoration of dialog box
            decoration: BoxDecoration(
              color: riskColor, // color of the risk level
              borderRadius: BorderRadius.circular(12)

            ),
            child: Center(child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(riskLevel,style: const TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),), // cvd risk level
                )
              )
            ),
            

          content: Text("\n$message",textAlign: TextAlign.center,style: const TextStyle(fontSize: 16),), // message to to the user 
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // close dialog box box 
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }


  



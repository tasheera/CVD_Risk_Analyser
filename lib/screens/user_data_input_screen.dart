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
  final TextEditingController _genderCVDController = TextEditingController(); // controller for gender text field
  final TextEditingController _heightCVDController = TextEditingController();// controller for height text field
  final TextEditingController _weightCVDController = TextEditingController();// controller for weight field
  final TextEditingController _apHiCVDController = TextEditingController();// controller for ap hi field
  final TextEditingController _apLoCVDController = TextEditingController();// controller for ap lo field
  final TextEditingController _glucoseCVDController = TextEditingController();// controller for diabetic field
  final TextEditingController _smokerCVDController = TextEditingController();// controller for smoker text field
  final TextEditingController _cholesterolCVDController = TextEditingController();// controller for cholesterol text field
  final TextEditingController _alcoholCVDController = TextEditingController();// controller for alcohol intake text field
  final TextEditingController _physicalCVDController = TextEditingController();// controller for physical activity text field

  Text previousResult=const Text("No Previous Result available",textAlign: TextAlign.center,style: TextStyle(color: Colors.black38, fontSize: 17 ),);


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
                  margin: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,// left align text
                    children: [

                    buildRiskInputField("Age :","input age between 20 and 80", _isValidAge,"Age should be between 20 and 80",TextInputType.number,_ageCVDController), // create input field
                    
                    buildRiskInputField("Gender :","biological male/ female", _isValidGender,"Enter male or female",TextInputType.text,_genderCVDController), // create input field
                      
                    buildRiskInputField("Weight :","insert in Kilograms", _isValidWeight,"Enter valid weight",TextInputType.number,_weightCVDController), // create input field

                    buildRiskInputField("Height :","insert in centimeters", _isValidHeight,"Enter valid height",TextInputType.number,_heightCVDController), // create input field

                    buildRiskInputField("Systolic blood pressure :","insert pressure", _isValidHeight,"Enter valid pressure",TextInputType.number,_apHiCVDController), // create input field

                    buildRiskInputField("Diastolic blood pressure :","insert pressure", _isValidHeight,"Enter valid pressure",TextInputType.number,_apLoCVDController), // create input field

                    buildRiskInputField("Cholesterol level :","insert cholesterol level", _isValidHeight,"Enter valid cholesterol level",TextInputType.number,_cholesterolCVDController), // create input field

                    buildRiskInputField("Glucose level :","insert glucose level", _isValidHeight,"Enter valid glucose level",TextInputType.number,_glucoseCVDController), // create input field

                    buildRiskInputField("Smoker :","input yes or no ", _isValidSmoker,"Enter yes or only",TextInputType.text,_smokerCVDController),  // create input field

                    buildRiskInputField("Alcohol intake :","input yes or no ", _isValidSmoker,"Enter yes or only",TextInputType.text,_alcoholCVDController), // create input field

                    buildRiskInputField("Alcohol intake :","input yes or no ", _isValidSmoker,"Enter yes or only",TextInputType.text,_physicalCVDController), // create input field


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
                              _predictCVDLevel(iconSize);
                              },
                             child: Text("Predict", style: TextStyle(color: Colors.white,fontSize: iconSize*0.5),),
                             ),

                             SizedBox(width: iconSize*2.2,),

                            ElevatedButton(
                            
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              fixedSize: Size(iconSize*3.7, iconSize*1.1),
                              
                            ),
                            onPressed: (){
                              patientDataClearConfirmBox(context,_riskCVDParameterClear); // call confirmation dialog box
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


  // predict cvd 
void _predictCVDLevel(double iconSize){
  if(_formKey.currentState!.validate()){
    print(_ageCVDController.text);
    print(_genderCVDController.text);

    //TODO link ml prediction function
    String cvdLevel="High Risk";

    showCVDRiskLevel(context,cvdLevel,'Risk of having a CVD in the near future is VERY LOW...!!', const Color(0XFFB6FFB0),const Color(0xFF00D823)); // call result display pop up box

          setState(() {
        if (cvdLevel=="low"){// check cvd level
        previousResult=Text("Low Risk",style: TextStyle(fontSize: iconSize*0.7,color:Color(0xFF00D823),fontWeight: FontWeight.bold ),); // update previous result
      }else{
        previousResult=Text("High Risk",style: TextStyle(fontSize: iconSize*0.7,color:Colors.red,fontWeight: FontWeight.bold ),); //  update previous result
        
      }
      
    });
    

  }
}

// clear input data
  void _riskCVDParameterClear(){
    _ageCVDController.clear();
    _genderCVDController.clear();
    _heightCVDController.clear();
    _weightCVDController.clear();
    _apHiCVDController.clear();
    _apLoCVDController.clear();
    _glucoseCVDController.clear();
    _smokerCVDController.clear();
    _cholesterolCVDController.clear();
    _alcoholCVDController.clear();
    _physicalCVDController.clear();

}

}


// input data validation

//TODO input data validation

bool _isValidAge(String input) {
  try {
        int age = int.parse(input);  // check input is int or not
        return age >= 1 && age <= 120; // check reasonable range
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

bool _isValidWeight(String input) {
  try {
        int weight = int.parse(input); // check input is valid or not
        return weight > 30 && weight <= 150; // check reasonable range
  } catch (e) {

    return false; // if there is any error ,return false
  }
}

bool _isValidHeight(String input) {
  try {
        double height = double.parse(input); // check input is valid or not
        return height > 0 && height <= 250; // check reasonable range
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

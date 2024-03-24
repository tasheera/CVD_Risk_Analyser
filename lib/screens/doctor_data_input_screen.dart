import 'package:cvd_risk_analyser/calculation.dart';
import 'package:cvd_risk_analyser/components/custom_navigation_bar.dart';
import 'package:cvd_risk_analyser/controllers/navigation_controller.dart';
import 'package:cvd_risk_analyser/controllers/user_data_controller.dart';
import 'package:cvd_risk_analyser/firebase_functions.dart';
import 'package:cvd_risk_analyser/lab_base_cal.dart';
import 'package:flutter/material.dart';

import 'input_screen_functions.dart';

class DoctorInputScreen extends StatefulWidget {
  final int number;
  const DoctorInputScreen({super.key, required this.number});


  @override
  State<DoctorInputScreen> createState() => _DoctorInputScreenState();
}

class _DoctorInputScreenState extends State<DoctorInputScreen> {
  final GlobalKey<FormState> _formKey =
      GlobalKey(); // create global key object form key validate

  final TextEditingController _ageCVDController =
      TextEditingController(); // controller for age text field
  final TextEditingController _genderCVDController =
      TextEditingController(); // controller for gender text field
  final TextEditingController _heightCVDController =
      TextEditingController(); // controller for height text field
  final TextEditingController _weightCVDController =
      TextEditingController(); // controller for weight field
  final TextEditingController _diabeticCVDController =
      TextEditingController(); // controller for diabetic field
  final TextEditingController _sbpCVDController =
      TextEditingController(); // controller for SBP text field
  final TextEditingController _smokerCVDController =
      TextEditingController(); // controller for smoker text field
  final TextEditingController _cholesterolCVDController =
      TextEditingController(); // controller for cholesterol text field

  Text previousResult = const Text(
    "No Previous Result available",
    textAlign: TextAlign.center,
    style: TextStyle(color: Colors.black38, fontSize: 17),
  );

  //Dependency Injection
  UserDataController _userDataController = UserDataController.instance;

  @override
  Widget build(BuildContext context) {
    double iconSize = 40;
    if (MediaQuery.of(context).size.width * 0.08 < 40)
      iconSize = MediaQuery.of(context).size.width *
          0.08; // return current screen width
    String chartType = widget.number == 3 ? "Lab chart" : "Non- Lab chart";

    DateTime dt = DateTime.now();
    String dd = "${dt.day}/${dt.month}/${dt.year}";

    //function to handle user title text
    String getUserDescriptionText()
    {
      if(_userDataController.currentUser != null)
        {
          String name = _userDataController.currentUser!.name;
          // String? position = _userDataController.currentUser!.position;
          // String? hospital = _userDataController.currentUser!.hospital;

          return 'Dr. ${name}'
              // '\n${position}\n${hospital}'
          ;
        }
      else
        {
          return 'Guest';
        }
    }

    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, // distribute free space
          children: [
            Text(
              '$chartType\t $dd\nCheck CVD risk chart below',
              style: TextStyle(fontSize: iconSize * 0.5),
            ),
            Image.asset(
              'assets/data_input_Vector_icon.png', //image file directory
              width: iconSize *
                  0.7, // adjust width of image using current screen width
              height: iconSize * 0.7, // height of image
            ),
            TextButton(
              onPressed: () {},
              child: Image.asset(
                'assets/data_input_report_icon.png', //image file direct
                width: iconSize *
                    1.6, // adjust width of image using current screen width
                height: iconSize * 1.6, // height of image
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        // enable scroll option
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: iconSize *
                    11, //width of the container related to current screen
                height: iconSize *
                    4.5, //height of the container related to current screen
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36),
                  color: const Color(0xFFD80032),
                ),

                child: Row(
                  children: [
                    Image.asset(
                      // doctor icon
                      'assets/data_input_doctor_Image_icon.png', //image file direct
                      width: iconSize *
                          3.8, // adjust width of image using current screen width
                      height: iconSize * 3.8, // height of image
                    ),
                    Text(
                      getUserDescriptionText(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: iconSize * 0.57,
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
                style: TextStyle(fontSize: iconSize * 0.6),
              ),
            ),
            Container(
                // used for show previous result
                height: iconSize * 3.2,
                width: iconSize * 6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all()),
                child: Center(child: previousResult)),
            Form(
              key:
                  _formKey, // assign key of the foam widget which is created in above
              child: Container(
                margin: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // left align text
                  children: [
                    buildRiskInputField(
                        "Age :",
                        "input age ",
                        _isValidAge,
                        "Age should be between 20 and 80",
                        TextInputType.number,
                        _ageCVDController), // create input field

                    buildRiskInputField(
                        "Gender :",
                        "biological male/ female",
                        _isValidGender,
                        "Enter male or female",
                        TextInputType.text,
                        _genderCVDController), // create input field

                    if (widget.number == 1)
                      buildRiskInputField(
                          "Height :",
                          "insert in centimeters",
                          _isValidHeight,
                          "Enter valid height",
                          TextInputType.number,
                          _heightCVDController), // create input field

                    if (widget.number == 1)
                      buildRiskInputField(
                          "Weight :",
                          "insert in Kilograms",
                          _isValidWeight,
                          "Enter valid weight",
                          TextInputType.number,
                          _weightCVDController), // create input field

                    buildRiskInputField(
                        "SBP Level :",
                        "input SBP (mmHg) ",
                        _isValidSBP,
                        "Enter valid SBP level",
                        TextInputType.number,
                        _sbpCVDController), // create input field

                    if (widget.number == 3)
                      buildRiskInputField(
                          "Diabetic :",
                          "input diabetic level (mmol/L)",
                          _isValidSBP,
                          "Enter valid Diabetic",
                          TextInputType.number,
                          _diabeticCVDController), // create input field

                    if (widget.number == 3)
                      buildRiskInputField(
                          "Cholesterol level :",
                          "insert cholesterol level (mmol/L)",
                          _isValidCholesterol,
                          "Enter valid cholesterol level",
                          TextInputType.number,
                          _cholesterolCVDController), // create input field

                    buildRiskInputField(
                        "Smoker :",
                        "input yes or no ",
                        _isValidSmoker,
                        "Enter yes or no only",
                        TextInputType.text,
                        _smokerCVDController), // create input field

                    const SizedBox(
                      height: 10,
                    ),

                    Row(
                      children: [
                        SizedBox(
                          width: iconSize * 0.8,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            fixedSize: Size(iconSize * 3.82, iconSize * 1.1),
                          ),
                          onPressed: () {
                            calculateRiskLevel(iconSize);
                          },
                          child: Text(
                            "Calculate",
                            style: TextStyle(
                                color: Colors.white, fontSize: iconSize * 0.5),
                          ),
                        ),
                        SizedBox(
                          width: iconSize * 2.2,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            fixedSize: Size(iconSize * 3.7, iconSize * 1.1),
                          ),
                          onPressed: () {
                            patientDataClearConfirmBox(context,
                                _riskCVDParameterClear); // call confirmation dialog box
                          },
                          child: Text(
                            "Clear",
                            style: TextStyle(
                                color: Colors.white, fontSize: iconSize * 0.5),
                          ),
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

  void calculateRiskLevel(double iconSize) {
    String ageCVD = _ageCVDController.text;
    String genderCVD = _genderCVDController.text;
    String sbpCVD = _sbpCVDController.text;
    String smokeCVD = _smokerCVDController.text;

    String heightCVD = _heightCVDController.text;
    String weightCVD = _weightCVDController.text;
    String diabeticCVD = _diabeticCVDController.text;
    String cholesterolCVD = _cholesterolCVDController.text;

    String cvdLevel = "";

    // get cvd level from calculation

    if (_formKey.currentState!.validate()) {
      // check validity of foam filed

      if (widget.number == 1) {
        // check chart type (non lab)
        cvdLevel = calculation(
            ageCVD, genderCVD, heightCVD, weightCVD, sbpCVD, smokeCVD);
      }

      if (widget.number == 3) {
        // check chart type (lab)
        cvdLevel = calculationLabBase(
            ageCVD, genderCVD, sbpCVD, diabeticCVD, cholesterolCVD, smokeCVD);
      }

      String colorOfCVD = "Error";

      Color showUpBoxColor = Colors.black;

      String percentageOfCVD = "Error";

      Color showUpBoxBackgroundColor = Colors.black;

      if (cvdLevel == "G") {
        colorOfCVD = "Green";
        percentageOfCVD = "<5%";
        showUpBoxColor = Colors.green;
        showUpBoxBackgroundColor = const Color.fromARGB(255, 152, 196, 153);
      } else if (cvdLevel == "Y") {
        colorOfCVD = "Yellow";
        showUpBoxColor = const Color.fromARGB(255, 207, 190, 37);
        percentageOfCVD = " 5% to 10%";
        showUpBoxBackgroundColor = const Color.fromARGB(255, 228, 214, 88);
      } else if (cvdLevel == "O") {
        colorOfCVD = "Orange";
        showUpBoxColor = Colors.orange;
        percentageOfCVD = " 10% to 20%";
        showUpBoxBackgroundColor = const Color.fromARGB(255, 226, 177, 104);
      } else if (cvdLevel == "R") {
        colorOfCVD = "Red";
        showUpBoxColor = Colors.red;
        percentageOfCVD = " 20% to 30%";
        showUpBoxBackgroundColor = const Color.fromARGB(255, 235, 123, 115);
      } else if (cvdLevel == "M") {
        colorOfCVD = "Maroon";
        showUpBoxColor = const Color(0XFF7b1113);
        percentageOfCVD = " >30%";
        showUpBoxBackgroundColor = const Color.fromARGB(255, 209, 54, 57);
      }

      // call function to show cvd level
      showCVDRiskLevel(
          context,
          colorOfCVD,
          "Risk Level:- $percentageOfCVD",
          showUpBoxBackgroundColor,
          showUpBoxColor); // call result display pop up box

      setState(() {
        // update previous result
        previousResult = Text(
          colorOfCVD,
          style: TextStyle(
              fontSize: iconSize * 0.7,
              color: showUpBoxColor,
              fontWeight: FontWeight.bold),
        ); // update previous result
      });

      if (colorOfCVD != "Error") {
        if (widget.number == 1) {
          // check chart type
          uploadNonLabchartData(ageCVD, genderCVD, heightCVD, weightCVD, sbpCVD,
              smokeCVD, colorOfCVD);
        }

        if (widget.number == 3) {
          // check chart type
          uploadLabchartData(ageCVD, genderCVD, sbpCVD, diabeticCVD,
              cholesterolCVD, smokeCVD, colorOfCVD);
        }
      }
    }
  }

  void _riskCVDParameterClear() {
    // clear the fields input data
    _ageCVDController.clear();
    _genderCVDController.clear();
    _heightCVDController.clear();
    _weightCVDController.clear();
    _cholesterolCVDController.clear();
    _sbpCVDController.clear();
    _smokerCVDController.clear();
    _diabeticCVDController.clear();
  }
}

bool _isValidAge(String input) {
  try {
    int age = int.parse(input); // check input is int or not
    return age >= 40 && age <= 74; // check reasonable range
  } catch (e) {
    return false; // if there is any error ,return false
  }
}

bool _isValidGender(String input) {
  if (input.toLowerCase() == "female" || input.toLowerCase() == "male") {
    //  check male or female
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
    double weight = double.parse(input); // check input is valid or not
    return weight > 30 && weight <= 150; // check reasonable range
  } catch (e) {
    return false; // if there is any error ,return false
  }
}

bool _isValidSBP(String input) {
  try {
    double sbp = double.parse(input); // check input is valid or not
    return sbp > 0 && sbp <= 300; // check reasonable range
  } catch (e) {
    return false; // if there is any error ,return false
  }
}

bool _isValidSmoker(String input) {
  if (input.toLowerCase() == "yes" || input.toLowerCase() == "no") {
    //  check smoker or not
    return true;
  }
  return false;
}

bool _isValidCholesterol(String input) {
  try {
    double choc = double.parse(input); // check input is valid or not
    return choc > 0 && choc <= 10; // check reasonable range
  } catch (e) {
    return false; // if there is any error ,return false
  }
}

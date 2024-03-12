import 'package:flutter/material.dart';

// function for show cvd risk level

void showCVDRiskLevel(BuildContext context, String riskLevel, String message, Color boxColor ,Color riskColor) { // create result display dialog box
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


// create function for return text filed with parameters and label
Widget buildRiskInputField(String labelName, String fieldName, validationFunction, String error, TextInputType keyboardType, TextEditingController controller){
  fieldName=fieldName; // assign parameter to local variable
  error=error; // assign parameter to local variable

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,// left align text
    children: [
      Text("$labelName ",style: TextStyle(fontSize: 17,fontFamily: "Oswald"),),
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
                return "Can not be left empty";
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


// function for clear data confirm message

void patientDataClearConfirmBox(BuildContext context, Function clearData) { // create clear confirmation box
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
              clearData(); // clear patient's data
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
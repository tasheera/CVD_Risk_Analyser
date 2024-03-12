import 'package:tflite_flutter/tflite_flutter.dart';

class CvdRiskModel {

  late Interpreter _interpreter;

  // Categorical values for cholesterol and glucose
  double cholesterol_normal = 0;
  double cholesterol_above_normal = 0;
  double cholesterol_well_above_normal = 0;
  double glucose_normal = 0;
  double glucose_above_normal = 0;
  double glucose_well_above_normal = 0;

//Mean and standard deviation based dataset used for ml model training
  double age_mean = 52.888572399618056;
  double age_std = 6.7447045300333315;
  double bmi_mean = 26.953454486354666;
  double bmi_std = 4.315249764536415;
  double systolic_BP_mean = 126.32282445095406;
  double systolic_BP_std = 14.254591463687891;
  double diastolic_BP_mean = 81.65424266455194;
  double diastolic_BP_std = 7.653997898604285;
  
  // Constructor to initialize the model
  CvdRiskModel() {
    loadModel();
  }

  
  // Load the TensorFlow Lite model from the assets
  Future<void> loadModel() async {
    _interpreter = await Interpreter.fromAsset('tf_log_reg.tflite');
  }

   // Perform CVD risk prediction
  Future<double> predictCvdRisk(int age, String gender, int weight, int height, int sbp, int dbp, double cholesteol, double glucose, String smoke, String alcohol,String physical) async {
    
    // Input data normalization and feature scaling for numerical values
    double normalizedAge = (age -age_mean ) / age_std;
    double normalizedBmi = ((weight / ((height/100) * (height/100))) - bmi_mean) / bmi_std;
    double normalizedSystolicBP = (sbp - systolic_BP_mean) / systolic_BP_std;
    double normalizedDiastolicBP = (dbp - diastolic_BP_mean) / diastolic_BP_std;

    //convert yes and no to binary values
    double smoke_binary = smoke == "yes" ? 1 : 0;
    double alcohol_binary = alcohol == "yes" ? 1 : 0;
    double physical_binary = physical == "yes" ? 1 : 0;
    double gender_binary = gender == "male" ? 1 : 0;

    // Categorical values for cholesterol
    if (cholesteol < 5.17) {
      cholesterol_normal = 1;
    } else if (cholesteol >= 5.17 && cholesteol < 6.20) {
      cholesterol_above_normal = 1;
    } else if(cholesteol >= 6.21) {
      cholesterol_well_above_normal = 1;
    }


    // Categorical values for glucose
    if (glucose < 5.6) {
      glucose_normal = 1;
    } else if (glucose >= 5.6 && glucose < 7.0) {
      glucose_above_normal = 1;
    } else if (glucose >= 7.0) {
      glucose_well_above_normal = 1;
    }

    // Prepare the input data as a 2D list
    List<List<double>> input = [
      [normalizedAge,gender_binary, normalizedSystolicBP,normalizedDiastolicBP, smoke_binary,alcohol_binary,physical_binary, normalizedBmi,cholesterol_normal,cholesterol_above_normal,cholesterol_well_above_normal,glucose_normal,glucose_above_normal,glucose_well_above_normal ],
    ];

    // Run inference
    List<List<double>> output = List.filled(1, List.filled(1, 0.0));
    _interpreter.run(input, output);

    // Extract and return the predicted CVD risk
    double predictedCvdRisk = output[0][0];
    return predictedCvdRisk;
  }

  // Dispose of the interpreter when done to free up resources
  void dispose() {
    _interpreter.close();
  }

}

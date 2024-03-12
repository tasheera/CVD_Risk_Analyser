import 'package:flutter_test/flutter_test.dart';
import 'package:cvd_risk_analyser/ml_model_predictions.dart';
import 'package:flutter/widgets.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  test('Model loading test', () async {
    final cvdRiskModel = CvdRiskModel();

    // Ensure that the model is loaded successfully
    await expectLater(cvdRiskModel.loadModel(), completes);

    // Dispose of the model to free up resources
    cvdRiskModel.dispose();
  });

  test('CVD risk prediction test', () async {
    final cvdRiskModel = CvdRiskModel();

    // Load the model
    await cvdRiskModel.loadModel();

    // Test prediction with sample input values
    final predictedCvdRisk = await cvdRiskModel.predictCvdRisk(
      50, // age
      'male', // gender
      62, // weight
      168, // height
      110, // systolic BP
      80, // diastolic BP
      3, // cholesterol
      80, // glucose
      'no', // smoke
      'no', // alcohol
      'yes', // physical
    );

    // Convert the predicted probability to a binary prediction using a threshold
    final binaryPrediction = (predictedCvdRisk >= 0.5) ? 1 : 0;

    // Print the predicted value and binary prediction to the console
    print('Predicted CVD Risk (Probability): $predictedCvdRisk');
    print('Binary Prediction: $binaryPrediction');


    // Assert that the predicted value is within an acceptable range
    expect(predictedCvdRisk, greaterThanOrEqualTo(0.0));
    expect(predictedCvdRisk, lessThanOrEqualTo(1.0));

    // Dispose of the model to free up resources
    cvdRiskModel.dispose();
  });
}

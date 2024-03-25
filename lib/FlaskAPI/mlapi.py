# Import necessary modules
from flask import Flask, request, jsonify 
import pickle  
import numpy as np  
from flask_cors import CORS

# Class for CVD risk assessment model API
class CvdRiskAssessmentModelAPI:
    def __init__(self, model_path):
        self.model_path = model_path 
        self.load_model()  # Load the model 

    # Method to load the machine learning model
    def load_model(self):
        try:
            with open(self.model_path, 'rb') as f:
                self.model = pickle.load(f)  # Deserialize the model
        except Exception as e:
            print("Error loading model:", e)  # Print error message if model loading fails

    # Method to perform prediction using the loaded model
    def predict(self, patient_data):
        # Extract patient data from the input JSON
        age = int(patient_data['age'])
        gender = str(patient_data['gender'])
        weight = float(patient_data['weight'])
        height = float(patient_data['height'])
        sbp = float(patient_data['sbp'])
        dbp = float(patient_data['dbp'])
        cholesterol = float(patient_data['cholesterol'])
        glucose = float(patient_data['glucose'])
        smoke = str(patient_data['smoke'])
        alcohol = str(patient_data['alcohol'])
        physical = str(patient_data['physical'])

        # Feature normalization

        # Define mean and standard deviation for normalization
        age_mean = 52.888572399618056
        age_std = 6.7447045300333315

        # Normalize age
        normalizedAge = (age - age_mean) / age_std

        # Normalize BMI (Body Mass Index)
        bmi_mean = 26.953454486354666
        bmi_std = 4.315249764536415
        normalizedBmi = ((weight / ((height/100) * (height/100))) - bmi_mean) / bmi_std

        # Normalize blood pressure
        systolic_BP_mean = 126.32282445095406
        systolic_BP_std = 14.254591463687891
        diastolic_BP_mean = 81.65424266455194
        diastolic_BP_std = 7.653997898604285
        normalizedSystolicBP = (sbp - systolic_BP_mean) / systolic_BP_std
        normalizedDiastolicBP = (dbp - diastolic_BP_mean) / diastolic_BP_std

        # Convert categorical values to binary
        smoke_binary = 1 if smoke == "yes" else 0
        alcohol_binary = 1 if alcohol == "yes" else 0
        physical_binary = 1 if physical == "yes" else 0
        gender_binary = 1 if gender == "male" else 0

        # Convert cholesterol and glucose values to categorical representations
        cholesterol_normal = 0
        cholesterol_above_normal = 0
        cholesterol_well_above_normal = 0
        glucose_normal = 0
        glucose_above_normal = 0
        glucose_well_above_normal = 0

        # Categorize cholesterol levels
        if cholesterol < 5.2:
            cholesterol_normal = 1
        elif  5.2<= cholesterol < 6.2:
            cholesterol_above_normal = 1
        elif cholesterol >= 6.2:
            cholesterol_well_above_normal = 1

        # Categorize glucose levels
        if 3.9 <=glucose < 5.6:
            glucose_normal = 1
        elif 5.6 <= glucose < 6.9:
            glucose_above_normal = 1
        elif glucose >= 7.0:
            glucose_well_above_normal = 1

        # Prepare input data for prediction
        passable_data = [normalizedAge, gender_binary, normalizedSystolicBP, normalizedDiastolicBP,
                         smoke_binary, alcohol_binary, physical_binary, normalizedBmi,
                         cholesterol_normal, cholesterol_above_normal, cholesterol_well_above_normal,
                         glucose_normal, glucose_above_normal, glucose_well_above_normal]
        passable_data = np.array([passable_data])

        # Perform prediction using the loaded model
        prediction = self.model.predict(passable_data)

        # Return prediction result
        if prediction[0] < 0.5:
            return 0
        elif prediction[0] >= 0.5:
            return 1
        else:
            return "Error"



app = Flask(__name__)

# Enable Cross-Origin Resource Sharing (CORS) for the app
CORS(app)

# create CVD risk assessment model API object
api = CvdRiskAssessmentModelAPI('log_reg_model.pkl')

# Define route for CVD risk assessment API endpoint
@app.route("/cvd_api_endpoint", methods=['POST'])
def cvd_endpoint():
    try:
        # Extract patient data from JSON request
        patient_data = request.get_json()
        # Predict CVD risk using the model API
        result = api.predict(patient_data)
        # Return prediction result as JSON response
        return jsonify(result)
    except Exception as e:
        # Return error message if an exception occurs during prediction
        return {"error": str(e)}

# Run the Flask app
if __name__ == '__main__':
    app.run()

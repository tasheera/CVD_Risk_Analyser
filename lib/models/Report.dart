//Model to hold report data

class Report {
  int reportId;
  String predictAge;
  String predictGender;
  String predictWeight;
  String predictHeight;
  String predictSbp;
  String predictDbp;
  String predictCholesterol;
  String predictGlucose;
  String predictSmoke;
  String predictAlcohol;
  String predictPhysical;
  String cvdLevel;

  Report({
    required this.reportId,
    required this.predictAge,
    required this.predictGender,
    required this.predictWeight,
    required this.predictHeight,
    required this.predictSbp,
    required this.predictDbp,
    required this.predictCholesterol,
    required this.predictGlucose,
    required this.predictSmoke,
    required this.predictAlcohol,
    required this.predictPhysical,
    required this.cvdLevel,
  });

  //factory to create object from map from database
  factory Report.fromMap(Map map) {
    return Report(
      reportId: map['report_id'],
      predictAge: map['predict_age'],
      predictGender: map['predict_gender'],
      predictWeight: map['predict_weight'],
      predictHeight: map['predict_height'],
      predictSbp: map['predict_sbp'],
      predictDbp: map['predict_dbp'],
      predictCholesterol: map['predict_cholesterol'],
      predictGlucose: map['predict_glucose'],
      predictSmoke: map['predict_smoke'],
      predictAlcohol: map['predict_alcohol'],
      predictPhysical: map['predict_sbpt'],
      cvdLevel: map['cvd_level'],
    );
  }

  //function to create map for database
  Map<String, dynamic> toMap() => {
    'predict_age': predictAge,
    'predict_gender': predictGender,
    'predict_weight': predictWeight,
    'predict_height': predictHeight,
    'predict_sbp': predictSbp,
    'predict_dbp': predictDbp,
    'predict_cholesterol': predictCholesterol,
    'predict_glucose': predictGlucose,
    'predict_smoke': predictSmoke,
    'predict_alcohol': predictAlcohol,
    'predict_physical': predictPhysical,
    'cvd_level': cvdLevel,
  };
}

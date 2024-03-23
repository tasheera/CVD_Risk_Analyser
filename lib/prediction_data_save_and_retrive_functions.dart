import 'package:cvd_risk_analyser/controllers/report_controller.dart';

import 'models/Report.dart';

void saveData(
    String predictAge,
    String predictGender,
    String predictWeight,
    String predictHeight,
    String predictSbp,
    String predictDbp,
    String predictCholesterol,
    String predictSbpt,
    String predictGlucose,
    String predictSmoke,
    String predictAlcohol,
    String cvdLevel) async {
  Report report = Report(
    reportId: 0, // Set reportId accordingly if available
    predictAge: predictAge,
    predictGender: predictGender,
    predictWeight: predictWeight,
    predictHeight: predictHeight,
    predictSbp: predictSbp,
    predictDbp: predictDbp,
    predictCholesterol: predictCholesterol,
    predictSbpt: predictSbpt,
    predictGlucose: predictGlucose,
    predictSmoke: predictSmoke,
    predictAlcohol: predictAlcohol,
    cvdLevel: cvdLevel,
  );
  await ReportController.instance.saveReport(report);
}

void fetchData(){
  List<Report> reports = ReportController.instance.reportList;
}
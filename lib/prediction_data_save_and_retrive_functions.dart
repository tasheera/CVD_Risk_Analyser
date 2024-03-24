import 'package:cvd_risk_analyser/controllers/report_controller.dart';
import 'models/Report.dart';

Future<void> saveData(
    String predictAge,
    String predictGender,
    String predictWeight,
    String predictHeight,
    String predictSbp,
    String predictDbp,
    String predictCholesterol,
    String predictGlucose,
    String predictSmoke,
    String predictAlcohol,
    String predictPhysical,
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
    predictGlucose: predictGlucose,
    predictSmoke: predictSmoke,
    predictAlcohol: predictAlcohol,
    predictPhysical: predictPhysical,
    cvdLevel: cvdLevel,
  );
  await ReportController.instance.saveReport(report);
}

List<Report> fetchData(){
  List<Report> reports = ReportController.instance.reportList;
  return reports;
}

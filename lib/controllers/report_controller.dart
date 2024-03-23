import 'package:cvd_risk_analyser/database/database_models/report_provider.dart';
import 'package:get/get.dart';

import '../models/Report.dart';

class ReportController extends GetxController{
  //singleton instance
  static ReportController instance = Get.find();

  //list to hold all reports
  List<Report> _reportList = [];

  //Getter
  List<Report> get reportList => _reportList;

  //private constructor to create singleton instance
  ReportController._();

  //this function, initially fetches data, and creates a singleton instance using the above private constructor
  static Future<ReportController> create () async {
    ReportController controller = ReportController._();
    await controller._initController();
    return controller;
  }

  //function to init controller
  Future<void> _initController() async{
    List<Map> dataList = await _getAllReports();
    _reportList = dataList.map<Report>((dataMap) => Report.fromMap(dataMap)).toList();
  }

  //function to fetch all reports from database
  Future<List<Map>> _getAllReports() async{
    try{
      List<Map> dataList = await ReportProvider.fetchReportDetails();
      return dataList;
    }catch(e)
    {
      print('Error getting report data : ${e.toString()}');
      rethrow;
    }
  }

  //function to save reports to database
  Future<void> saveReport(Report report) async {
    try{
      await ReportProvider.insertReport(report.toMap());
      await _initController();
    }catch(e){
      e.printError();
      rethrow;
    }
  }
}
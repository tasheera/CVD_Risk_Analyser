import '../database_service.dart';
import 'package:sqflite/sqflite.dart';

//This is the database provider for reports table
class ReportProvider {
  static const String tableName = 'reports';

  static Future<void> createTable(Database database, int version) async {
    await database.execute('''
CREATE TABLE IF NOT EXISTS Reports (
    report_id INTEGER PRIMARY KEY,
    predict_age TEXT NOT NULL,
    predict_gender TEXT NOT NULL,
    predict_weight TEXT NOT NULL,
    predict_height TEXT NOT NULL,
    predict_sbp TEXT NOT NULL,
    predict_dbp TEXT NOT NULL,
    predict_cholesterol TEXT NOT NULL,
    predict_glucose TEXT NOT NULL,
    predict_smoke TEXT NOT NULL,
    predict_alcohol TEXT NOT NULL,
    predict_physical TEXT NOT NULL,
    cvd_level TEXT NOT NULL
)
''');
  }

  //function to insert a report
  static Future<int> insertReport(Map<String, dynamic> data) async {
    Database database = await DatabaseService().getDatabase();
    return await database.transaction((txn) async {
      return await txn.insert(tableName, data);
    });
  }

  //function to fetch all the reports
  static Future<List<Map>> fetchReportDetails() async {
    Database database = await DatabaseService().getDatabase();
    List<Map> list = await database
        .rawQuery('SELECT * from $tableName');

    List<Map> updatedList = list.map((map) {
      Map updatedMap = Map.from(map);
      return updatedMap;
    }).toList();
    return updatedList;
  }
}

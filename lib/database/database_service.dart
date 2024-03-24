import 'package:cvd_risk_analyser/database/database_models/report_provider.dart';
import 'package:cvd_risk_analyser/database/database_models/user_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:core';


//database service which handles db file. DO NOT EDIT
class DatabaseService {
  Database? _database;

  Future<Database> getDatabase() async {
    if (_database != null) {
      return _database!;
    }
    _database = await _initialize();
    return _database!;
  }

  Future<String> getFullPath() async {
    const name = 'cvd.db';
    final path = await getDatabasesPath();
    return join(path, name);
  }

  Future<Database> _initialize() async {
    final path = await getFullPath();
    var database = await openDatabase(
      path,
      version: 1,
      onCreate: _create,
      singleInstance: true,
      onConfigure: _configure,
    );
    return database;
  }

  Future<void> _create(Database database, int version) async {
    await UserProvider.createTable(database, version);
    await ReportProvider.createTable(database, version);
  }

  Future<void> _configure(Database database) async {
    await database.execute('PRAGMA foreign_keys = ON');
  }

  Future<void> dropDatabase() async {
    String databasePath =
        await getFullPath(); // Replace with the actual path to your SQLite database file
    await deleteDatabase(databasePath);
  }
}

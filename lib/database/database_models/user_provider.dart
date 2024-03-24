import '../database_service.dart';
import 'package:sqflite/sqflite.dart';

//provider for the table containing user data
class UserProvider {
  static const String tableName = 'users';

  static Future<void> createTable(Database database, int version) async {
    await database.execute('''
      CREATE TABLE IF NOT EXISTS $tableName (
        user_email TEXT PRIMARY KEY,
        user_name TEXT NOT NULL
      )
    ''');
    ///Add position & hospital here again if required
  }


  //function to insert/update user details
  static Future<int> insertOrUpdateUser(Map<String, dynamic> data) async {
    Database database = await DatabaseService().getDatabase();
    return await database.transaction((txn) async {
      return await txn.insert(tableName, data, conflictAlgorithm: ConflictAlgorithm.replace);
    });
  }

  //function to fetch user details base on user email
  static Future<List<Map>> fetchUserDetails(String userEmail) async {
    Database database = await DatabaseService().getDatabase();
    List<Map> list = await database
        .rawQuery('SELECT * from $tableName WHERE user_email = ?', [userEmail]);

    List<Map> updatedList = list.map((map) {
      Map updatedMap = Map.from(map);
      return updatedMap;
    }).toList();
    return updatedList;
  }
}

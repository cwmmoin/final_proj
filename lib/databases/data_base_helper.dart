import 'package:sqflite/sqflite.dart' as sql;

class DatabaseHelper {
  static Future<sql.Database> openDb() async {
    return sql.openDatabase(
      'mypushup.db',
      version: 1,
      onCreate: (sql.Database database, int version) async {
        await database.execute(
            "CREATE TABLE IF NOT EXISTS person_info(id INTEGER PRIMARY KEY AUTOINCREMENT, full_name Text, email Text, password Text)");
      },
    );
  }

  // Create new item
  static Future<int> save(String name, String email, String password) async {
    final db = await DatabaseHelper.openDb();
    final id = await db.insert('person_info',
        {'full_name': name, "email": email, "password": password});
    return id;
  }

  // Read all items
  static Future<List<Map<String, dynamic>>> get() async {
    final db = await DatabaseHelper.openDb();
    return db.rawQuery('SELECT * FROM person_info');
  }

  static Future<int> update(
      int id, String name, String email, String password) async {
    final db = await DatabaseHelper.openDb();
    final result = await db.rawUpdate(
        'UPDATE person_info SET name = ?, email ?, password ? WHERE id = ?',
        [name, email, password, id]);
    // final result = await db.update('push_ups', {'count': countValue},
    //     where: "id = ?", whereArgs: [id]);
    return result;
  }

  // Get a single item by id
  //We dont use this method, it is for you if you want it.
  static Future<List<Map<String, dynamic>>> getItem(int id) async {
    final db = await DatabaseHelper.openDb();
    return db.query('items', where: "id = ?", whereArgs: [id], limit: 1);
  }
}

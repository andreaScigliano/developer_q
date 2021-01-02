
import 'dart:io';
import 'package:developer_q/models/model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';
class DBProvider {
  DBProvider._();
  static final DBProvider db = DBProvider._();
  static Database _database;

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "TestDB.db");
    return await openDatabase(path, version: 1, onOpen: (db) {
    }, onCreate: (Database db, int version) async {
      await db.execute("CREATE TABLE Client ("
          "id INTEGER PRIMARY KEY,"
          "first_name TEXT,"
          "last_name TEXT,"
          ")");
    });
  }

  getClient(int id) async {
    final db = await database;
    var res =await  db.query("Client", where: "id = ?", whereArgs: [id]);
    return res.isNotEmpty ? Client.fromMap(res.first) : Null ;
  }
  
  Future<Database> get database async {
    if (_database != null)
    return _database;

    // if _database is null we instantiate it
    _database = await initDB();
    return _database;
  }
  newClient(Client newClient) async {
    final db = await database;
    var res = await db.rawInsert(
      "INSERT Into Client (id,first_name)"
      " VALUES (${newClient.id},${newClient.firstName})");
    return res;
  }
}


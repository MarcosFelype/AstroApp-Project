import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  



  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "pacote.db");
    Database database =
        await openDatabase(path, version: 1, onCreate: onCreate);

    print(path);
    return database;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    String sql =
        "CREATE TABLE user (username varchar(100) PRIMARY KEY, password varchar(100))";
    await db.execute(sql);

    sql =
        "INSERT INTO user (username, password) VALUES ('astronauta@gmail.com', '40028922')";
    await db.execute(sql);
  }
}
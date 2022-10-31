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
    //CREATE TABLE

    String sqlassunto =
        "CREATE TABLE assuntos (genero varchar(100), titulo varchar(100), imagem varchar(200), rota varchar(100))";
    await db.execute(sqlassunto);

    //INSERT INTO

    //ASTRONAUTICA

    sqlassunto =
        "INSERT INTO assuntos (genero, titulo, imagem, rota) VALUES ('astronautica', 'Ângulos de Êuler', 'assets/ang_euler.png', 'Angulos_De_Euler()')";
    await db.execute(sqlassunto);

    sqlassunto =
        "INSERT INTO assuntos (genero, titulo, imagem, rota) VALUES ('astronautica', 'Aplicações da Astronáutica', 'assets/apl_astronautica.jpg', 'Aplicacoes_Da_Astronautica()')";
    await db.execute(sqlassunto);

    sqlassunto =
        "INSERT INTO assuntos (genero, titulo, imagem, rota) VALUES ('astronautica', 'Introdução à Astronáutica', 'assets/int_astronautica.jpg', 'Introducao_Astronautica()')";
    await db.execute(sqlassunto);

    //ASTRONOMIA

    sqlassunto =
        "INSERT INTO assuntos (genero, titulo, imagem, rota) VALUES ('astronomia', 'Constelações', 'assets/const.jpg', 'Constelacoes()')";
    await db.execute(sqlassunto);

    sqlassunto =
        "INSERT INTO assuntos (genero, titulo, imagem, rota) VALUES ('astronomia', 'Planetas', 'assets/planetas.jpg', 'Planetas()')";
    await db.execute(sqlassunto);

    sqlassunto =
        "INSERT INTO assuntos (genero, titulo, imagem, rota) VALUES ('astronomia', 'Introdução à Astronomia', 'assets/int_astronomia.jpg', 'Introducao_Astronomia()')";
    await db.execute(sqlassunto);
  }

}

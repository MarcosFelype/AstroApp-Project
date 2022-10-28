import 'package:astroapp/data/db_helper.dart';
import 'package:astroapp/domain/indicacoes/principal_domain.dart';
import 'package:sqflite/sqflite.dart';

class IndicacoesDAO {
  Future<List<PrincipalDomain>> listarPrincipalIndicacoes() async {
    DBHelper indHelper = DBHelper();
    Database db = await indHelper.initDB();

    String sql = 'SELECT * FROM PRINCIPAL_INDICACOES';
    final result = await db.rawQuery(sql);

    List<PrincipalDomain> lista = <PrincipalDomain>[];
    for (var json in result) {
      PrincipalDomain principal = PrincipalDomain.fromJson(json);
      lista.add(principal);
    }
    return lista;
  }
}

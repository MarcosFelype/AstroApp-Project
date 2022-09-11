import 'package:astroapp/domain/indicacoes/principal_domain.dart';

class PrincipalData {
  static List<PrincipalDomain> lista_principal = [
    PrincipalDomain(
      titulocard: 'Canais do YouTube',
      imagem:
          'https://cdn.iconscout.com/icon/free/png-256/youtube-268-721990.png',
    ),
    PrincipalDomain(
      titulocard: 'Sites',
      imagem:
          'https://cdn.iconscout.com/icon/free/png-256/youtube-268-721990.png',
    ),
    PrincipalDomain(
      titulocard: 'Livros e materiais diversos',
      imagem:
          'https://cdn.iconscout.com/icon/free/png-256/youtube-268-721990.png',
    ),
    PrincipalDomain(
      titulocard: 'Outras Redes',
      imagem:
          'https://cdn.iconscout.com/icon/free/png-256/youtube-268-721990.png',
    ),
    
  ];

  static Future<List<PrincipalDomain>> getListaIndicacoes() async{
    await Future.delayed(const Duration(seconds: 10));
    return lista_principal;
  }
}

import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "astroapp.db");
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

    /*************  Indicações  ***************/

    //principal_indicacoes
    String sql_princind =
        "CREATE TABLE principal_indicacoes (tituloCard varchar(200), imagem varchar(100))";
    await db.execute(sql_princind);

    sql_princind =
        "INSERT INTO principal_indicacoes (tituloCard, imagem VALUES ('Canais do YouTube', 'https://cdn.iconscout.com/icon/free/png-256/youtube-268-721990.png'))";
    await db.execute(sql_princind);

    sql_princind =
        "INSERT INTO principal_indicacoes (tituloCard, imagem VALUES ('Sites', 'https://upload.wikimedia.org/wikipedia/commons/5/5f/Website.png'))";
    await db.execute(sql_princind);

    sql_princind =
        "INSERT INTO principal_indicacoes (tituloCard, imagem VALUES ('Livros e materiais diversos', 'https://publicdomainvectors.org/photos/StackOfBooks.png'))";
    await db.execute(sql_princind);

    sql_princind =
        "INSERT INTO principal_indicacoes (tituloCard, imagem VALUES ('Outras Redes', 'https://c.pxhere.com/images/48/55/ea3e6a6c6dc4c0aad03ba603702e-1564111.jpg!d'))";
    await db.execute(sql_princind);


    // subpages_indicacoes

    String sql_subind =
        "CREATE TABLE subpages_indicacoes (tituloCard varchar(200), imagem varchar(100), texto varchar(400), textBotao varchar(100), link varchar(100), tipoIndicacao varchar(100))";
    await db.execute(sql_subind);


    // -> youtube

    sql_subind = "INSERT INTO subpages_indicacoes (tituloCard, imagem, texto, textBotao, link, tipoIndicacao) VALUES ('ABF - AstrobioFísica', 'https://yt3.ggpht.com/ytc/AMLnZu95CkFKE3pg_bZJwKip8kUhvSaIlk1LeSfKu9GuaA=s900-c-k-c0x00ffffff-no-rj', 'Ministradas pelo propfessor Virgílio, as aulas do canal ABF - AstrobioFísica para astonomia, guiam o aluno desde os conceitos básicos da astronomia até demonstrações de fórmulas da astrofísica. É uma excelente opção para os que desejam se aventurar nas oimpíadas de astronomia, em especial a OBA e as seletivas para as olipíadas internacionais de astronomia.', 'Visite o canal', 'https://www.youtube.com/c/ABFAstroBioF%C3%ADsica', 'youtube')";
    await db.execute(sql_subind);

    
    sql_subind = "INSERT INTO subpages_indicacoes (tituloCard, imagem, texto, textBotao, link, tipoIndicacao) VALUES ('ABF - AstrobioFísica', 'https://yt3.ggpht.com/ytc/AMLnZu95CkFKE3pg_bZJwKip8kUhvSaIlk1LeSfKu9GuaA=s900-c-k-c0x00ffffff-no-rj', 'Ministradas pelo propfessor Virgílio, as aulas do canal ABF - AstrobioFísica para astonomia, guiam o aluno desde os conceitos básicos da astronomia até demonstrações de fórmulas da astrofísica. É uma excelente opção para os que desejam se aventurar nas oimpíadas de astronomia, em especial a OBA e as seletivas para as olipíadas internacionais de astronomia.', 'Visite o canal', 'https://www.youtube.com/c/ABFAstroBioF%C3%ADsica', 'youtube')";
    await db.execute(sql_subind);


    sql_subind = "INSERT INTO subpages_indicacoes (tituloCard, imagem, texto, textBotao, link, tipoIndicacao) VALUES ('ABF - AstrobioFísica', 'https://yt3.ggpht.com/ytc/AMLnZu95CkFKE3pg_bZJwKip8kUhvSaIlk1LeSfKu9GuaA=s900-c-k-c0x00ffffff-no-rj', 'Ministradas pelo propfessor Virgílio, as aulas do canal ABF - AstrobioFísica para astonomia, guiam o aluno desde os conceitos básicos da astronomia até demonstrações de fórmulas da astrofísica. É uma excelente opção para os que desejam se aventurar nas oimpíadas de astronomia, em especial a OBA e as seletivas para as olipíadas internacionais de astronomia.', 'Visite o canal', 'https://www.youtube.com/c/ABFAstroBioF%C3%ADsica', 'youtube')";
    await db.execute(sql_subind);



    // -> site

    sql_subind = "INSERT INTO subpages_indicacoes (tituloCard, imagem, texto, textBotao, link, tipoIndicacao) VALUES ('Site da OBA', 'https://www.ifpe.edu.br/campus/caruaru/noticias/participe-da-olimpiada-brasileira-de-astronomia-e-astronautica/oba.png/@@images/image.png', 'O site da OBA é muito importante de ser visitado àqueles que querem entender os detalhes da olimpíada em questão, desde provas até logística. Há também materiais voltados às seletivas de astronomia.', 'Visite o site', 'http://www.oba.org.br/site/', 'site')";
    await db.execute(sql_subind);


    sql_subind = "INSERT INTO subpages_indicacoes (tituloCard, imagem, texto, textBotao, link, tipoIndicacao) VALUES ('Site da OBA', 'https://www.ifpe.edu.br/campus/caruaru/noticias/participe-da-olimpiada-brasileira-de-astronomia-e-astronautica/oba.png/@@images/image.png', 'O site da OBA é muito importante de ser visitado àqueles que querem entender os detalhes da olimpíada em questão, desde provas até logística. Há também materiais voltados às seletivas de astronomia.', 'Visite o site', 'http://www.oba.org.br/site/', 'site')";
    await db.execute(sql_subind);


    sql_subind = "INSERT INTO subpages_indicacoes (tituloCard, imagem, texto, textBotao, link, tipoIndicacao) VALUES ('Site da OBA', 'https://www.ifpe.edu.br/campus/caruaru/noticias/participe-da-olimpiada-brasileira-de-astronomia-e-astronautica/oba.png/@@images/image.png', 'O site da OBA é muito importante de ser visitado àqueles que querem entender os detalhes da olimpíada em questão, desde provas até logística. Há também materiais voltados às seletivas de astronomia.', 'Visite o site', 'http://www.oba.org.br/site/', 'site')";
    await db.execute(sql_subind);



    // -> livro

    sql_subind =
        "INSERT INTO subpages_indicacoes (tituloCard, imagem, texto, textBotao, link, tipoIndicacao) VALUES ('Guia para seletivas online', 'http://noic.com.br/wp-content/uploads/2014/04/cropped-NOIC-Matheus-c%C3%B3pia.png', 'Este artigo do NOIC mostra indicações gerais para a seletiva, vindas de um grupo de estudantes que tem propriedade de fala.', 'Veja o livro', 'https://noic.com.br/wp-content/uploads/2021/08/Guia_Seletivas_Online.pdf', 'livro')";
        await db.execute(sql_subind);


    sql_subind =
        "INSERT INTO subpages_indicacoes (tituloCard, imagem, texto, textBotao, link, tipoIndicacao) VALUES ('Guia para seletivas online', 'http://noic.com.br/wp-content/uploads/2014/04/cropped-NOIC-Matheus-c%C3%B3pia.png', 'Este artigo do NOIC mostra indicações gerais para a seletiva, vindas de um grupo de estudantes que tem propriedade de fala.', 'Veja o livro', 'https://noic.com.br/wp-content/uploads/2021/08/Guia_Seletivas_Online.pdf', 'livro')";
        await db.execute(sql_subind);

    
    sql_subind =
        "INSERT INTO subpages_indicacoes (tituloCard, imagem, texto, textBotao, link, tipoIndicacao) VALUES ('Guia para seletivas online', 'http://noic.com.br/wp-content/uploads/2014/04/cropped-NOIC-Matheus-c%C3%B3pia.png', 'Este artigo do NOIC mostra indicações gerais para a seletiva, vindas de um grupo de estudantes que tem propriedade de fala.', 'Veja o livro', 'https://noic.com.br/wp-content/uploads/2021/08/Guia_Seletivas_Online.pdf', 'livro')";
        await db.execute(sql_subind);



    // -> redes

    sql_subind =
        "INSERT INTO redes_indicacoes (nome, imagem, texto, linkInsta, linkTel, tipoIndicacao) VALUES ('Virgílio', 'https://yt3.ggpht.com/ytc/AMLnZu95CkFKE3pg_bZJwKip8kUhvSaIlk1LeSfKu9GuaA=s900-c-k-c0x00ffffff-no-rj', 'Sim, ele mesmo. O dono do canal ABF! :)', 'https://www.instagram.com/abf_astrobiofisica/', 'https://t.me/s/astronomia_abf', 'redes')";
        await db.execute(sql_subind);


    sql_subind =
        "INSERT INTO redes_indicacoes (nome, imagem, texto, linkInsta, linkTel, tipoIndicacao) VALUES ('Virgílio', 'https://yt3.ggpht.com/ytc/AMLnZu95CkFKE3pg_bZJwKip8kUhvSaIlk1LeSfKu9GuaA=s900-c-k-c0x00ffffff-no-rj', 'Sim, ele mesmo. O dono do canal ABF! :)', 'https://www.instagram.com/abf_astrobiofisica/', 'https://t.me/s/astronomia_abf', 'redes')";
        await db.execute(sql_subind);

    
    sql_subind =
        "INSERT INTO redes_indicacoes (nome, imagem, texto, linkInsta, linkTel, tipoIndicacao) VALUES ('Virgílio', 'https://yt3.ggpht.com/ytc/AMLnZu95CkFKE3pg_bZJwKip8kUhvSaIlk1LeSfKu9GuaA=s900-c-k-c0x00ffffff-no-rj', 'Sim, ele mesmo. O dono do canal ABF! :)', 'https://www.instagram.com/abf_astrobiofisica/', 'https://t.me/s/astronomia_abf', 'redes')";
        await db.execute(sql_subind);

    
    
    

  }
}

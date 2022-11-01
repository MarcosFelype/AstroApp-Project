import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "astro.db");
    Database database =
        await openDatabase(path, version: 1, onCreate: onCreate);

    print(path);
    return database;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    
    /********** USUÁRIOS **********/

    String sql =
        "CREATE TABLE user (username varchar(100) PRIMARY KEY, password varchar(100))";
    await db.execute(sql);

    sql =
        "INSERT INTO user (username, password) VALUES ('astronauta@gmail.com', '40028922')";
    await db.execute(sql);

    /****************  Questões  ***************/

    //BANCO_QUESTOES
    String sqlquestion =
        "CREATE TABLE QUESTOES (imagem varchar(100), titulo varchar(400), alternativa1 varchar(100), alternativa2 varchar(100), alternativa3 varchar(100), alternativa4 varchar(100), alternativa5 varchar(100), alternativa_certa number);";
    await db.execute(sqlquestion);

    sqlquestion =
        "INSERT INTO QUESTOES (imagem, titulo, alternativa1, alternativa2, alternativa3, alternativa4, alternativa5, alternativa_certa) VALUES ('https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Size_planets_comparison.jpg/1280px-Size_planets_comparison.jpg', 'Vivemos no planeta Terra. Além dele, existem outros sete girando em torno do Sol, cujos nomes esperamos que já saiba. Então, responda: Quantos planetas têm somente 5 letras em seu nome? Assinale a única alternativa correta.', '4', '3', '2', '5', '6', 1);";
    await db.execute(sqlquestion);

    sqlquestion =
        "INSERT INTO QUESTOES (imagem, titulo, alternativa1, alternativa2, alternativa3, alternativa4, alternativa5, alternativa_certa) VALUES ('https://1.bp.blogspot.com/-g0sTX70IkYE/XqMWxgrVPqI/AAAAAAAAdS4/3GW2FyrxmA4at_WzndS3Q9SD-yFGsFAbACLcBGAsYHQ/s1600/dia-e-noite-003.jpg', 'Tudo no Universo se move. O que explica a alternância entre a noite e o dia claro? Assinale a única alternativa correta. ', 'À noite a Terra entra na sombra da Lua.', 'A rotação do Sol.', 'A rotação da Terra.', 'À noite o Sol não brilha', 'À noite um Buraco Negro bloqueia a luz do Sol. ', 3);";
    await db.execute(sqlquestion);

    sqlquestion =
        "INSERT INTO QUESTOES (imagem, titulo, alternativa1, alternativa2, alternativa3, alternativa4, alternativa5, alternativa_certa) VALUES ('https://www.eusemfronteiras.com.br/wp-content/uploads/2020/02/81863403_s-810x519.jpg', 'Vamos fazer uma viagem espacial. Vamos começar indo para o mesmo local onde foram os astronautas, em 1969. Qual é o nome deste lugar? Uma dica: este lugar fica “pertinho”, ou seja, só cerca de 400.000 quilômetros. Assinale a única alternativa correta.', 'Plutão', 'Urano', 'Marte', 'Vênus', 'Lua', 5);";
    await db.execute(sqlquestion);

    /*************  Indicações  ***************/

    //principal_indicacoes
    String sql_princind =
        "CREATE TABLE principal_indicacoes (tituloCard varchar(200), imagem varchar(100))";
    await db.execute(sql_princind);

    sql_princind =
        "INSERT INTO principal_indicacoes (tituloCard, imagem) VALUES ('Canais do YouTube', 'https://cdn.iconscout.com/icon/free/png-256/youtube-268-721990.png')";
    await db.execute(sql_princind);

    sql_princind =
        "INSERT INTO principal_indicacoes (tituloCard, imagem) VALUES ('Sites', 'https://upload.wikimedia.org/wikipedia/commons/5/5f/Website.png')";
    await db.execute(sql_princind);

    sql_princind =
        "INSERT INTO principal_indicacoes (tituloCard, imagem) VALUES ('Livros e materiais diversos', 'https://publicdomainvectors.org/photos/StackOfBooks.png')";
    await db.execute(sql_princind);

    sql_princind =
        "INSERT INTO principal_indicacoes (tituloCard, imagem) VALUES ('Outras Redes', 'https://c.pxhere.com/images/48/55/ea3e6a6c6dc4c0aad03ba603702e-1564111.jpg!d')";
    await db.execute(sql_princind);

    // subpages_indicacoes

    String sql_subind =
        "CREATE TABLE subpages_indicacoes (tituloCard varchar(200), imagem varchar(100), texto varchar(400), textBotao varchar(100), link varchar(100), tipoIndicacao varchar(100));";
    await db.execute(sql_subind);

    // -> youtube

    sql_subind =
        "INSERT INTO subpages_indicacoes (tituloCard, imagem, texto, textBotao, link, tipoIndicacao) VALUES ('ABF - AstrobioFísica', 'https://yt3.ggpht.com/ytc/AMLnZu95CkFKE3pg_bZJwKip8kUhvSaIlk1LeSfKu9GuaA=s900-c-k-c0x00ffffff-no-rj', 'Ministradas pelo propfessor Virgílio, as aulas do canal ABF - AstrobioFísica para astonomia, guiam o aluno desde os conceitos básicos da astronomia até demonstrações de fórmulas da astrofísica. É uma excelente opção para os que desejam se aventurar nas oimpíadas de astronomia, em especial a OBA e as seletivas para as olipíadas internacionais de astronomia.', 'Visite o canal', 'https://www.youtube.com/c/ABFAstroBioF%C3%ADsica', 'Canais do YouTube');";
    await db.execute(sql_subind);

    sql_subind =
        "INSERT INTO subpages_indicacoes (tituloCard, imagem, texto, textBotao, link, tipoIndicacao) VALUES ('ABF - AstrobioFísica', 'https://yt3.ggpht.com/ytc/AMLnZu95CkFKE3pg_bZJwKip8kUhvSaIlk1LeSfKu9GuaA=s900-c-k-c0x00ffffff-no-rj', 'Ministradas pelo propfessor Virgílio, as aulas do canal ABF - AstrobioFísica para astonomia, guiam o aluno desde os conceitos básicos da astronomia até demonstrações de fórmulas da astrofísica. É uma excelente opção para os que desejam se aventurar nas oimpíadas de astronomia, em especial a OBA e as seletivas para as olipíadas internacionais de astronomia.', 'Visite o canal', 'https://www.youtube.com/c/ABFAstroBioF%C3%ADsica', 'Canais do YouTube');";
    await db.execute(sql_subind);

    sql_subind =
        "INSERT INTO subpages_indicacoes (tituloCard, imagem, texto, textBotao, link, tipoIndicacao) VALUES ('ABF - AstrobioFísica', 'https://yt3.ggpht.com/ytc/AMLnZu95CkFKE3pg_bZJwKip8kUhvSaIlk1LeSfKu9GuaA=s900-c-k-c0x00ffffff-no-rj', 'Ministradas pelo propfessor Virgílio, as aulas do canal ABF - AstrobioFísica para astonomia, guiam o aluno desde os conceitos básicos da astronomia até demonstrações de fórmulas da astrofísica. É uma excelente opção para os que desejam se aventurar nas oimpíadas de astronomia, em especial a OBA e as seletivas para as olipíadas internacionais de astronomia.', 'Visite o canal', 'https://www.youtube.com/c/ABFAstroBioF%C3%ADsica', 'Canais do YouTube');";
    await db.execute(sql_subind);

    // -> site

    sql_subind =
        "INSERT INTO subpages_indicacoes (tituloCard, imagem, texto, textBotao, link, tipoIndicacao) VALUES ('Site da OBA', 'https://www.ifpe.edu.br/campus/caruaru/noticias/participe-da-olimpiada-brasileira-de-astronomia-e-astronautica/oba.png/@@images/image.png', 'O site da OBA é muito importante de ser visitado àqueles que querem entender os detalhes da olimpíada em questão, desde provas até logística. Há também materiais voltados às seletivas de astronomia.', 'Visite o site', 'http://www.oba.org.br/site/', 'Sites');";
    await db.execute(sql_subind);

    sql_subind =
        "INSERT INTO subpages_indicacoes (tituloCard, imagem, texto, textBotao, link, tipoIndicacao) VALUES ('Site da OBA', 'https://www.ifpe.edu.br/campus/caruaru/noticias/participe-da-olimpiada-brasileira-de-astronomia-e-astronautica/oba.png/@@images/image.png', 'O site da OBA é muito importante de ser visitado àqueles que querem entender os detalhes da olimpíada em questão, desde provas até logística. Há também materiais voltados às seletivas de astronomia.', 'Visite o site', 'http://www.oba.org.br/site/', 'Sites');";
    await db.execute(sql_subind);

    sql_subind =
        "INSERT INTO subpages_indicacoes (tituloCard, imagem, texto, textBotao, link, tipoIndicacao) VALUES ('Site da OBA', 'https://www.ifpe.edu.br/campus/caruaru/noticias/participe-da-olimpiada-brasileira-de-astronomia-e-astronautica/oba.png/@@images/image.png', 'O site da OBA é muito importante de ser visitado àqueles que querem entender os detalhes da olimpíada em questão, desde provas até logística. Há também materiais voltados às seletivas de astronomia.', 'Visite o site', 'http://www.oba.org.br/site/', 'Sites');";
    await db.execute(sql_subind);

    // -> livro

    sql_subind =
        "INSERT INTO subpages_indicacoes (tituloCard, imagem, texto, textBotao, link, tipoIndicacao) VALUES ('Guia para seletivas online', 'http://noic.com.br/wp-content/uploads/2014/04/cropped-NOIC-Matheus-c%C3%B3pia.png', 'Este artigo do NOIC mostra indicações gerais para a seletiva, vindas de um grupo de estudantes que tem propriedade de fala.', 'Veja o livro', 'https://noic.com.br/wp-content/uploads/2021/08/Guia_Seletivas_Online.pdf', 'Livros e materiais diversos');";
    await db.execute(sql_subind);

    sql_subind =
        "INSERT INTO subpages_indicacoes (tituloCard, imagem, texto, textBotao, link, tipoIndicacao) VALUES ('Guia para seletivas online', 'http://noic.com.br/wp-content/uploads/2014/04/cropped-NOIC-Matheus-c%C3%B3pia.png', 'Este artigo do NOIC mostra indicações gerais para a seletiva, vindas de um grupo de estudantes que tem propriedade de fala.', 'Veja o livro', 'https://noic.com.br/wp-content/uploads/2021/08/Guia_Seletivas_Online.pdf', 'Livros e materiais diversos');";
    await db.execute(sql_subind);

    sql_subind =
        "INSERT INTO subpages_indicacoes (tituloCard, imagem, texto, textBotao, link, tipoIndicacao) VALUES ('Guia para seletivas online', 'http://noic.com.br/wp-content/uploads/2014/04/cropped-NOIC-Matheus-c%C3%B3pia.png', 'Este artigo do NOIC mostra indicações gerais para a seletiva, vindas de um grupo de estudantes que tem propriedade de fala.', 'Veja o livro', 'https://noic.com.br/wp-content/uploads/2021/08/Guia_Seletivas_Online.pdf', 'Livros e materiais diversos');";
    await db.execute(sql_subind);

    // -> redes

    String sql_redes =
        "CREATE TABLE redes_indicacoes (nome varchar(200), imagem varchar(100), texto varchar(400), linkInsta varchar(100), linkTel varchar(100), tipoIndicacao varchar(100));";
    await db.execute(sql_redes);

    sql_redes =
        "INSERT INTO redes_indicacoes (nome, imagem, texto, linkInsta, linkTel, tipoIndicacao) VALUES ('Virgílio', 'https://yt3.ggpht.com/ytc/AMLnZu95CkFKE3pg_bZJwKip8kUhvSaIlk1LeSfKu9GuaA=s900-c-k-c0x00ffffff-no-rj', 'Sim, ele mesmo. O dono do canal ABF! :)', 'https://www.instagram.com/abf_astrobiofisica/', 'https://t.me/s/astronomia_abf', 'Outras Redes');";
    await db.execute(sql_redes);

    sql_redes =
        "INSERT INTO redes_indicacoes (nome, imagem, texto, linkInsta, linkTel, tipoIndicacao) VALUES ('Virgílio', 'https://yt3.ggpht.com/ytc/AMLnZu95CkFKE3pg_bZJwKip8kUhvSaIlk1LeSfKu9GuaA=s900-c-k-c0x00ffffff-no-rj', 'Sim, ele mesmo. O dono do canal ABF! :)', 'https://www.instagram.com/abf_astrobiofisica/', 'https://t.me/s/astronomia_abf', 'Outras Redes');";
    await db.execute(sql_redes);

    sql_redes =
        "INSERT INTO redes_indicacoes (nome, imagem, texto, linkInsta, linkTel, tipoIndicacao) VALUES ('Virgílio', 'https://yt3.ggpht.com/ytc/AMLnZu95CkFKE3pg_bZJwKip8kUhvSaIlk1LeSfKu9GuaA=s900-c-k-c0x00ffffff-no-rj', 'Sim, ele mesmo. O dono do canal ABF! :)', 'https://www.instagram.com/abf_astrobiofisica/', 'https://t.me/s/astronomia_abf', 'Outras Redes');";
    await db.execute(sql_redes);

    /********* NOTICIAS *********/

    String sqlnoticias =
        "CREATE TABLE NOTICIAS (imagem varchar(100), titulo varchar(100) PRIMARY KEY, id varchar(100))";
    await db.execute(sqlnoticias);

    sqlnoticias =
        "INSERT INTO NOTICIAS (imagem, titulo, id) VALUES ('assets/not1.jpg', 'Brasil lança novo foguete nacional', 'NoticiaI()')";
    await db.execute(sqlnoticias);

    sqlnoticias =
        "INSERT INTO NOTICIAS (imagem, titulo, id) VALUES ('assets/not2.jpg', 'SQL funcioou galeraa!!!', 'NoticiaII()')";
    await db.execute(sqlnoticias);

    sqlnoticias =
        "INSERT INTO NOTICIAS (imagem, titulo, id) VALUES ('assets/not3.jpg', 'Scott e Chichi promoverão cursos sobre astronomia; saiba como participar', 'NoticiaIII()')";
    await db.execute(sqlnoticias);

    sqlnoticias =
        "INSERT INTO NOTICIAS (imagem, titulo, id) VALUES ('assets/not1.jpg', 'Professor de astronomia de Bauru explica como observar pico de chuva de meteoros visível na região', 'NoticiaIV()')";
    await db.execute(sqlnoticias);

    /******* ASSUNTOS *******/  

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

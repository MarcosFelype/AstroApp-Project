class RedesDomain {
  //final String tituloprinc; //PEGAR O TÍRULO DE "TÍTULO CARD" DE PRINCIPAL
  late String nome;
  late String imagem;
  late String texto;
  late String linkInsta;
  late String linkTel;

  RedesDomain({
    required this.nome,
    required this.imagem,
    required this.texto,
    required this.linkInsta,
    required this.linkTel,
  });

  RedesDomain.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    imagem = json['imagem'];
    texto = json['texto'];
    linkInsta = json['linkInsta'];
    linkTel = json['linkTel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    nome = data['nome'];
    imagem = data['imagem'];
    texto = data['texto'];
    linkInsta = data['linkInsta'];
    linkTel = data['linkTel'];

    return data;
  }
}

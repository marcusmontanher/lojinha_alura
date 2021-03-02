class Movel {
  String title;
  String foto;
  String descricao;
  int preco;

  Movel({this.title, this.foto, this.descricao, this.preco});

  Movel.fromJson(Map<String, dynamic> json) {
    title = json['titulo'];
    foto = json['foto'];
    descricao = json['descricao'];
    preco = json['preco'];
  }
}

class Medidas {
  int? id;
  String? nome;
  String? genero;

  Medidas({this.id, this.nome, this.genero});

  Medidas.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    genero = json['genero'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['genero'] = this.genero;

    return data;
  }
}

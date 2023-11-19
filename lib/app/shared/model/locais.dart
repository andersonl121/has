class Locais {
  int id = 0;
  String nome = "";

  Locais({required this.id, required this.nome});

  Locais.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    return data;
  }
}

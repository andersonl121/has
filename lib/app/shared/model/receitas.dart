import 'ingredientes.dart';

class Receitas {
  int? id;
  String? nome;
  String? descricao;
  List<Ingredientes>? ingredientes;

  Receitas({this.id, this.nome, this.descricao, this.ingredientes});

  Receitas.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    descricao = json['descricao'];
    if (json['ingredientes'] != null) {
      ingredientes = <Ingredientes>[];
      json['ingredientes'].forEach((v) {
        ingredientes!.add(new Ingredientes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['descricao'] = this.descricao;
    if (this.ingredientes != null) {
      data['ingredientes'] = this.ingredientes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

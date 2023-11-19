import 'locais.dart';

class Ingredientes {
  int? id;
  String nome = "";
  Locais local = new Locais(id: 0, nome: "");

  Ingredientes();

  Ingredientes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    local = json['local'] != null
        ? new Locais.fromJson(json['local'])
        : new Locais(id: 0, nome: "");
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['local'] = this.local.toJson();

    return data;
  }
}

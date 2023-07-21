import 'locais.dart';

class Ingredientes {
  int? id;
  String? nome;
  Locais? local;

  Ingredientes({this.id, this.nome, this.local});

  Ingredientes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    local = json['local'] != null ? new Locais.fromJson(json['local']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    if (this.local != null) {
      data['local'] = this.local!.toJson();
    }
    return data;
  }
}

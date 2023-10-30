import 'package:sas/app/shared/model/ingredientesReceitas.dart';

class Receitas {
  int id = 0;
  String nome = "";
  String descricao = "";
  List<IngredientesReceitas>? ingredientesReceitas;

  Receitas(
      {required this.id,
      required this.nome,
      required this.descricao,
      this.ingredientesReceitas});

  Receitas.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    descricao = json['descricao'];
    if (json['ingredientesReceitas'] != null) {
      ingredientesReceitas = <IngredientesReceitas>[];
      json['ingredientesReceitas'].forEach((v) {
        ingredientesReceitas!.add(new IngredientesReceitas.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['descricao'] = this.descricao;
    if (this.ingredientesReceitas != null) {
      data['ingredientesReceitas'] =
          this.ingredientesReceitas!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

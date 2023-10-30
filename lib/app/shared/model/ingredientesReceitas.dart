import 'package:sas/app/shared/model/ingredientes.dart';
import 'package:sas/app/shared/model/medidas.dart';

class IngredientesReceitas {
  Ingredientes? ingredientes;
  double? quantidade;
  Medidas? medida;

  IngredientesReceitas({this.ingredientes, this.quantidade, this.medida});

  IngredientesReceitas.fromJson(Map<String, dynamic> json) {
    ingredientes = json['ingredientes'] != null
        ? new Ingredientes.fromJson(json['ingredientes'])
        : null;

    quantidade = json['quantidade'];
    medida =
        json['medida'] != null ? new Medidas.fromJson(json['medida']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ingredientes'] = this.ingredientes?.toJson();

    data['quantidade'] = this.quantidade;
    data['medida'] = this.medida?.toJson();

    return data;
  }
}

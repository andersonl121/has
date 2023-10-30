import 'package:dio/dio.dart';

import '../model/receitas.dart';

class ApiProvider {
  final Dio _dio;

  final String _baseUrl = 'http://192.168.1.12:8080';
  final String _ingredientesScope = '/ingredientes';
  final String _receitasScope = '/receitas';

  get _getIngredientesFullUrl => _baseUrl + _ingredientesScope;
  get _getReceitasFullUrl => _baseUrl + _receitasScope;

  ApiProvider(this._dio);

  Future<List<Receitas>> fetchReceitasList() async {
    Response response = await _dio.get(_getReceitasFullUrl);

    print('calling API');

    if (response.statusCode == 200) {
      print('response: ' + response.data.toString());
      return (response.data as List).map((e) => Receitas.fromJson(e)).toList();
    } else {
      throw Exception("Erro ao recuperar Receitas.");
    }
  }
}

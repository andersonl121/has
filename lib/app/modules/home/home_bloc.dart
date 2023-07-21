import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:sas/app/shared/providers/apiProvider.dart';

import '../../shared/model/receitas.dart';

class HomeBloc extends BlocBase {
  ApiProvider _apiProvider;

  HomeBloc(this._apiProvider);

  //dispose will be called automatically by closing its streams
  @override
  void dispose() {
    super.dispose();
  }

  Future<List<Receitas>> fetchReceitasList() {
    return _apiProvider.fetchReceitasList();
  }
}

import 'package:flutter/material.dart';
import 'package:sas/app/modules/recipe_reader/recipe_reader_bloc.dart';
import 'package:sas/app/modules/recipe_reader/recipe_reader_module.dart';

import '../../shared/MyTheme.dart';
import '../../shared/components/aText.dart';
import '../../shared/sizeConfig.dart';

class RecipeReaderPage extends StatefulWidget {
  final String title;
  const RecipeReaderPage({Key? key, this.title = "Receita"}) : super(key: key);

  @override
  _RecipeReaderPageState createState() => _RecipeReaderPageState();
}

class _RecipeReaderPageState extends State<RecipeReaderPage> {
  var _sc;
  late final RecipeReaderBloc _bloc;

  @override
  void initState() {
    _bloc = RecipeReaderModule.to.bloc<RecipeReaderBloc>();
    super.initState();
    _bloc.doReadRecipe();
  }

  @override
  Widget build(BuildContext context) {
    _sc = SizeConfig.of(context);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: AText(
            text: "Hearing Assistance System",
            cor: MyTheme().getWhiteTextColor(),
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: new Center(
          child:
              AText(text: "Reproduzindo Receita: " + _bloc.activeReceita.nome),
        ));
  }
}

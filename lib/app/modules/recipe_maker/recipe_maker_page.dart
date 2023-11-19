import 'package:flutter/material.dart';

import '../../app_bloc.dart';
import '../../app_module.dart';
import '../../shared/MyTheme.dart';
import '../../shared/components/aText.dart';
import '../../shared/sizeConfig.dart';
import '../recipe_reader/recipe_reader_bloc.dart';
import '../recipe_reader/recipe_reader_module.dart';

class RecipeMakerPage extends StatefulWidget {
  final String title;
  const RecipeMakerPage({Key? key, this.title = "Receita"}) : super(key: key);

  @override
  _RecipeMakerPageState createState() => _RecipeMakerPageState();
}

class _RecipeMakerPageState extends State<RecipeMakerPage> {
  var _sc;
  late final RecipeReaderBloc _bloc;
  late final AppBloc _appBloc;

  @override
  void initState() {
    _bloc = RecipeReaderModule.to.bloc<RecipeReaderBloc>();
    _appBloc = AppModule.to.bloc<AppBloc>();
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
        body: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              setState(() {
                //_appBloc.stopSpeak();
              });

              Navigator.pop(context);
            },
            child: new Center(
              child:
                  AText(text: "Fazendo Receita: " + _bloc.activeReceita.nome),
            )));
  }
}

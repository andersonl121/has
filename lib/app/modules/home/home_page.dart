import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:sas/app/app_module.dart';
import 'package:sas/app/modules/home/home_bloc.dart';
import 'package:sas/app/modules/home/home_module.dart';
import 'package:sas/app/shared/components/aText.dart';
import 'package:sas/app/shared/myTheme.dart';
import 'package:sas/app/shared/sizeConfig.dart';

import '../../app_bloc.dart';
import '../../shared/components/carousel.dart';
import '../../shared/model/receitas.dart';
import '../../shared/utils/speakConstants.dart';
import '../recipe_reader/recipe_reader_module.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _sc;
  CarouselController _carouselController = new CarouselController();
  late Future<List<Receitas>> _receitas;
  late final AppBloc _appBloc;
  late final HomeBloc _bloc;
  late Iterator<Receitas> _iteratorReceitas;

  @override
  void initState() {
    _bloc = HomeModule.to.bloc<HomeBloc>();
    _appBloc = AppModule.to.bloc<AppBloc>();

    _receitas = _bloc.fetchReceitasList();

    super.initState();

    _appBloc.speak(SpeakConstants.presentationAppText +
        SpeakConstants.optionSelectReceitaText +
        SpeakConstants.optionListenReceitaText);

    _appBloc.receitaAtivaStream.listen((event) {
      _bloc.onNextPageReceitaFunction(event.nome.toString());
    });
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
        body: FutureBuilder(
            future: _receitas,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                _iteratorReceitas = snapshot.data!.iterator;
                _iterate(snapshot);
                _appBloc.activateReceita(_iteratorReceitas.current);

                return GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onDoubleTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RecipeReaderModule()),
                      );
                    },
                    onTap: () {
                      _carouselController.nextPage();
                      _iterate(snapshot);
                      _appBloc.activateReceita(_iteratorReceitas.current);
                    },
                    child: SizedBox.expand(
                        child: Carousel(
                      _carouselController,
                      snapshot.data,
                    )));
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }));
  }

  _iterate(AsyncSnapshot<List<Receitas>> snapshot) {
    if (!_iteratorReceitas.moveNext()) {
      _iteratorReceitas = snapshot.data!.iterator;
      _iteratorReceitas.moveNext();
    }
  }
}

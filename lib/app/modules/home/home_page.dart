import 'dart:ffi';

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
  late Future<List<Receitas>> receitas;
  late var _appBloc;

  @override
  void initState() {
    final bloc = HomeModule.to.bloc<HomeBloc>();
    _appBloc = AppModule.to.bloc<AppBloc>();

    receitas = bloc.fetchReceitasList();
    _appBloc.speak(
        'Seja bem vindo ao Hearing Assistance System. Para ouvir uma receita dê dois cliques rápidos na tela. Para próxima receita dê um clique na tela');
    super.initState();
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
            future: receitas,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      print('TapEvent Dispatched');
                      _carouselController.nextPage();
                    },
                    onDoubleTap: () {
                      print("DoubleTapEvent Dispatched");
                    },
                    child: SizedBox.expand(
                        child: Carousel(_carouselController, snapshot.data)));
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }));
  }
}

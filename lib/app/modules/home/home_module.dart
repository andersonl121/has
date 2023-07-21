import 'package:dio/dio.dart';
import 'package:sas/app/modules/home/home_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:sas/app/modules/home/home_page.dart';
import 'package:sas/app/shared/providers/apiProvider.dart';

class HomeModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => HomeBloc(i.get<ApiProvider>())),
      ];

  @override
  List<Dependency> get dependencies => [
        Dependency((i) => Dio()),
        Dependency((i) => ApiProvider(i.get<Dio>()), singleton: true)
      ];

  @override
  Widget get view => HomePage();

  static Inject get to => Inject<HomeModule>.of();
}

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:sas/app/modules/recipe_maker/recipe_maker_bloc.dart';
import 'package:sas/app/modules/recipe_maker/recipe_maker_page.dart';

class RecipeMakerModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => RecipeMakerBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => RecipeMakerPage();

  static Inject get to => Inject<RecipeMakerModule>.of();
}

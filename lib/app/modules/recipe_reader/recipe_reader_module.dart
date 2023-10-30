import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:sas/app/modules/recipe_reader/recipe_reader_bloc.dart';
import 'package:sas/app/modules/recipe_reader/recipe_reader_page.dart';

class RecipeReaderModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => RecipeReaderBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => RecipeReaderPage();

  static Inject get to => Inject<RecipeReaderModule>.of();
}

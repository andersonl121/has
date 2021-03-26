import 'package:sas/app/modules/signup/signup_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:sas/app/modules/signup/signup_page.dart';

class SignupModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => SignupBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => SignupPage();

  static Inject get to => Inject<SignupModule>.of();
}

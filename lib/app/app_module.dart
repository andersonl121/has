import 'package:sas/app/app_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:sas/app/app_widget.dart';
import 'package:sas/app/shared/providers/speechProvider.dart';
import 'package:flutter_tts/flutter_tts.dart';


class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [Bloc((i) => AppBloc(i.get<SpeechProvider>()))];

  @override
  List<Dependency> get dependencies => [
        Dependency((i) => FlutterTts()),
        Dependency((i) => SpeechProvider(i.get<FlutterTts>()),
            singleton: true)
      ];

  @override
  Widget get view => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}

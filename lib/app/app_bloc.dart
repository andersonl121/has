import 'dart:async';
import 'dart:io';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:sas/app/shared/model/receitas.dart';
import 'package:sas/app/shared/providers/speechProvider.dart';
import 'package:sas/app/shared/utils/speakConstants.dart';

class AppBloc extends BlocBase {
  SpeechProvider _speechProvider;

  AppBloc(this._speechProvider);

  StreamController<Receitas> _receitaAtivaSink = StreamController();

  Stream<Receitas> get receitaAtivaStream => _receitaAtivaSink.stream;

  late Receitas _receitaAtiva;

  Receitas get activeReceita => _receitaAtiva;

  //dispose will be called automatically by closing its streams
  @override
  void dispose() {
    super.dispose();
    _receitaAtivaSink.close();
  }

  speak(String text) {
    _speechProvider.speak(text);
    sleep(Duration(seconds: SpeakConstants.speakPauseTime));
  }

  stopSpeak() {
    _speechProvider.stop();
  }

  void activateReceita(Receitas receita) {
    _receitaAtivaSink.add(receita);
    _receitaAtiva = receita;
  }
}

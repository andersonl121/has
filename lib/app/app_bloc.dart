import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:sas/app/shared/providers/speechProvider.dart';

class AppBloc extends BlocBase {
  SpeechProvider _speechProvider;

  AppBloc(this._speechProvider);

  //dispose will be called automatically by closing its streams
  @override
  void dispose() {
    super.dispose();
  }

  speak(String text) {
    _speechProvider.speak(text);
  }
}

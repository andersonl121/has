import 'package:flutter_tts/flutter_tts.dart';

class SpeechProvider {
  FlutterTts _tts;

  final double _volume = 1.0;
  final String _language = "PT-BR";

  SpeechProvider(this._tts) {
    _configureSpeech();
  }

  _configureSpeech() async {
    _tts.setLanguage(_language);
    _tts.setVolume(_volume);
    await _tts.awaitSpeakCompletion(true);
  }

  speak(String text) {
    _tts.speak(text);
  }
}

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:sas/app/app_bloc.dart';
import 'package:sas/app/app_module.dart';
import 'package:sas/app/shared/model/ingredientesReceitas.dart';
import 'package:sas/app/shared/utils/quantityTranslator.dart';
import 'package:sas/app/shared/utils/speakConstants.dart';

import '../../shared/model/receitas.dart';

class RecipeReaderBloc extends BlocBase {
  late final AppBloc _appBloc;
  late final Receitas _receita;

  RecipeReaderBloc() {
    _appBloc = AppModule.to.bloc<AppBloc>();
    _receita = _appBloc.activeReceita;
  }

  Receitas get activeReceita => _receita;

  void doReadRecipe() {
    String textToRead = _buildTextToRead(_receita.ingredientesReceitas);
    print("Texto gerado: $textToRead");
    _appBloc.speak(textToRead);
  }

  String _buildTextToRead(List<IngredientesReceitas>? ingredientes) {
    String text = SpeakConstants.introdutionReadingReceitaText;
    text = text + _receita.nome + ". ";
    text = text + SpeakConstants.optionBackPage;
    text = text + SpeakConstants.presentationIntroReceitaText;

    ingredientes?.forEach((element) {
      String? translatedQuantity = new QuantityTranslator()
          .doTranslateQuantity(element.quantidade, element.medida?.genero);
      String? space = " ";
      String? medida = element.medida?.nome;
      String conjunction = " de ";
      String? ingrediente = element.ingredientes?.nome;
      String endPoint = ". ";

      List<String?> textPieces = [
        translatedQuantity,
        space,
        medida,
        conjunction,
        ingrediente,
        endPoint
      ];

      text = text + textPieces.join();
    });

    return text;
  }

  void makeRecipe() {
    _receita = _appBloc.activeReceita;
    _reproduceIntroReceitaMaker();
    _obtainItens();
  }

  void _reproduceIntroReceitaMaker() {
    String textToSpeak =
        SpeakConstants.presentationIntroReceitaMakerText + activeReceita.nome;
    _appBloc.speak(textToSpeak);
  }

  void _obtainItens() {
    activeReceita.ingredientesReceitas?.map((e) => locateItem(e));
  }

  void locateItem(IngredientesReceitas ingredientesReceitas) {
    speakItemIntro(ingredientesReceitas);
    //await Item location
  }

  void speakItemIntro(IngredientesReceitas ingredientesReceitas) {
    String textToSpeak = SpeakConstants.introLocateItemReceitaMakerText;
    textToSpeak = textToSpeak + ingredientesReceitas.ingredientes.nome;
    textToSpeak = textToSpeak + SpeakConstants.preposition_Em;
    textToSpeak = textToSpeak + ingredientesReceitas.ingredientes.local.nome;
    _appBloc.speak(textToSpeak);
  }

  //dispose will be called automatically by closing its streams
  @override
  void dispose() {
    super.dispose();
  }
}

class QuantityTranslator {
  static const FEMALE = 'F';
  static const MALE = 'M';

  String doTranslateQuantity(double? quantity, String? gender) {
    if (MALE == gender) {
      return _translateMaleQuantity(quantity);
    } else if (FEMALE == gender) {
      return _translateFemaleQuantity(quantity);
    } else {
      return "";
    }
  }

  String _translateMaleQuantity(double? quantity) {
    String result = switch (quantity) {
      0.5 => "Meio",
      1.0 => "Um",
      1.5 => "Um e meio",
      2.0 => "Dois",
      _ => quantity.toString()
    };

    return result;
  }

  String _translateFemaleQuantity(double? quantity) {
    String result = switch (quantity) {
      0.5 => "Meia",
      1.0 => "Uma",
      1.5 => "Uma e meia",
      2.0 => "Duas",
      _ => quantity.toString()
    };

    return result;
  }
}

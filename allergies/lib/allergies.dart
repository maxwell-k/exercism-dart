enum Allergy {
  eggs,
  peanuts,
  shellfish,
  strawberries,
  tomatoes,
  chocolate,
  pollen,
  cats,
}

class Allergies {
  static String _describe(Allergy i) => i.toString().split('.').last;

  static final List<String> allergies = Allergy.values.map(_describe).toList();

  bool allergicTo(String item, int score) =>
      (score >> allergies.indexOf(item)) % 2 == 1;

  List<String> list(int score) {
    return Allergy.values
        .map(_describe)
        .where((item) => allergicTo(item, score))
        .toList();
  }
}

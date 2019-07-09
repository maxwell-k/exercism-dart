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

String describe(Allergy i) => i.toString().split('.').last;

class Allergies {
  List<String> allergies = Allergy.values.map(describe).toList();

  bool allergicTo(String item, int score) =>
      (score >> this.allergies.indexOf(item)) % 2 == 1;

  List<String> list(int score) {
    return Allergy.values
        .where((i) => score >> i.index % 2 == 1)
        .map(describe)
        .toList();
  }
}

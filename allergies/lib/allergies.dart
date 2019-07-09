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
  List<String> allergies =
      Allergy.values.map((i) => i.toString().split('.').last).toList();

  bool allergicTo(String item, int score) =>
      (score >> this.allergies.indexOf(item)) % 2 == 1;

  List<String> list(int score) {
    return Allergy.values
        .where((i) => score >> i.index % 2 == 1)
        .map((i) => i.toString().split('.').last)
        .toList();
  }
}

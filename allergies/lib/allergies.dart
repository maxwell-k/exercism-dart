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

bool check(int score, int index) => (score >> index) % 2 == 1;

class Allergies {
  List<String> allergies = Allergy.values.map(describe).toList();

  bool allergicTo(String item, int score) =>
      check(score, this.allergies.indexOf(item));

  List<String> list(int score) {
    return Allergy.values
        .where((i) => score >> i.index % 2 == 1)
        .map(describe)
        .toList();
  }
}

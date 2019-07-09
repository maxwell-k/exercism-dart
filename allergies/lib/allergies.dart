enum Item {
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
  Map<String, int> items = Map<String, int>.fromIterable(Item.values,
      key: (dynamic i) => i.toString().split('.').last,
      value: (dynamic i) => 1 << (i.index as int));

  bool allergicTo(String item, int score) {
    return score >= this.items[item];
  }

  List<String> list(int score) => List<String>();
}

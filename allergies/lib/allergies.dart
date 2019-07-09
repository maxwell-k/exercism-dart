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
  /* Map<String, int> items = Map<String, int>.fromIterable(Item.values, */
  /*     key: (dynamic i) => i.toString().split('.').last, */
  /*     value: (dynamic i) => 1 << (i.index as int)); */
  List<String> items =
      Item.values.map((i) => i.toString().split('.').last).toList();

  bool allergicTo(String item, int score) {
    return (score >> this.items.indexOf(item)) % 2 == 1;
  }

  List<String> list(int score) => List<String>();
}

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
  List<String> items =
      Item.values.map((i) => i.toString().split('.').last).toList();

  bool allergicTo(String item, int score) {
    return (score >> this.items.indexOf(item)) % 2 == 1;
  }

  List<String> list(int score) => List<String>();
}

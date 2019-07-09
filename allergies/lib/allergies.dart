import 'dart:math' show pow;

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
      value: (dynamic i) => pow(2, i.index as num) as int);

  bool allergicTo(String item, int score) => score > this.items[item];

  List<String> list(int score) => List<String>();
}

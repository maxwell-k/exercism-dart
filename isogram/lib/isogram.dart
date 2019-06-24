class Isogram {
  bool isIsogram(String word) {
    final List<String> runes = word.toLowerCase().split("");
    return runes.every((String e) => runes.where((i) => i == e).length == 1);
  }
}

class Isogram {
  bool isIsogram(String word) {
    final List<String> runes = word
        .toLowerCase()
        .split("")
        .where((i) => !{' ', '-'}.contains(i))
        .toList();
    return runes.toSet().every((e) => runes.where((i) => i == e).length == 1);
  }
}

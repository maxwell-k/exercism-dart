class Isogram {
  bool isIsogram(String word) {
    final List<String> runes = word
        .toLowerCase()
        .split("")
        .where((i) => !{' ', '-'}.contains(i))
        .toList();
    return runes.every((e) => runes.where((i) => i == e).length == 1);
  }
}

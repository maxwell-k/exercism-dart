class WordCount {
  Map<String, int> countWords(String text) {
    Map<String, int> result = {};
    text.split(RegExp(r'[ ,\n!!&@$%^:]+')).where((i) => !i.isEmpty).forEach(
        (String i) =>
            result.update(i, (int value) => value + 1, ifAbsent: () => 1));
    return result;
  }
}

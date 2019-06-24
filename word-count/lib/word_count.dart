class WordCount {
  Map<String, int> countWords(String text) {
    Map<String, int> result = {};
    text
        .split(RegExp(r'[ ,\n!!&@$%^:.]+'))
        .map((i) => i.toLowerCase())
        .map((i) => i.startsWith("'") && i.endsWith("'")
            ? i.substring(1, i.length - 1)
            : i)
        .where((i) => !i.isEmpty)
        .forEach((String i) =>
            result.update(i, (int value) => value + 1, ifAbsent: () => 1));
    return result;
  }
}

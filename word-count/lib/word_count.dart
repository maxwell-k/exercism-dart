class WordCount {
  Map<String, int> _add(Map<String, int> result, String key) {
    result.update(key, (int value) => value + 1, ifAbsent: () => 1);
    return result;
  }

  Map<String, int> countWords(String text) {
    return text
        .split(RegExp(r'[ ,\n!!&@$%^:.]+'))
        .map((i) => i.toLowerCase())
        .map((i) => i.startsWith("'") && i.endsWith("'")
            ? i.substring(1, i.length - 1)
            : i)
        .where((i) => !i.isEmpty)
        .fold(Map<String, int>(), _add);
  }
}

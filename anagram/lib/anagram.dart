class Anagram {
  List<String> findAnagrams(String word, List<String> candidates) {
    final Set<String> letters = word.split("").toSet();
    return candidates.where((i) => i.split("").toSet() == letters).toList();
  }
}

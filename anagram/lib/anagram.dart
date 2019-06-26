class Anagram {
  List<String> findAnagrams(String word, List<String> candidates) {
    final Set<String> letters = word.split("").toSet();
    print({'a'} == {'a'});
    return candidates.where((candidate) {
      Set<String> c = candidate.split("").toSet();
      return c.length == letters.length && c.every(letters.contains);
    }).toList();
  }
}

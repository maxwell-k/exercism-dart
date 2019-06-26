class Anagram {
  List<String> findAnagrams(String word, List<String> candidates) {
    List<String> letters = word.split("")..sort();
    final sorted = letters.join("");
    return candidates.where((candidate) {
      List<String> candidate_letters = candidate.split("")..sort();
      return candidate_letters.join("") == sorted;
    }).toList();
  }
}

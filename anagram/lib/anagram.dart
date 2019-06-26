class Anagram {
  List<String> findAnagrams(String wordMixedCase, List<String> candidates) {
    final word = wordMixedCase.toLowerCase();
    List<String> letters = word.split("")..sort();
    final sorted = letters.join("");
    return candidates.where((String mixedCase) {
      final candidate = mixedCase.toLowerCase();
      List<String> candidate_letters = candidate.split("")..sort();
      return candidate_letters.join("") == sorted && candidate != word;
    }).toList();
  }
}

class Anagram {
  List<String> findAnagrams(String wordMixedCase, List<String> candidates) {
    final word = wordMixedCase.toLowerCase();
    List<String> letters = word.split("")..sort();
    final wordSorted = letters.join("");
    return candidates.where((String mixedCase) {
      final candidate = mixedCase.toLowerCase();
      List<String> candidateLetters = candidate.split("")..sort();
      return candidateLetters.join("") == wordSorted && candidate != word;
    }).toList();
  }
}

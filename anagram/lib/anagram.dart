import 'package:collection/collection.dart' show ListEquality;

const listEquality = ListEquality<String>();

class Anagram {
  List<String> findAnagrams(String word, List<String> candidates) {
    List<String> letters = word.split("")..sort();
    return candidates.where((candidate) {
      List<String> candidate_letters = candidate.split("")..sort();
      return listEquality.equals(letters, candidate_letters);
    }).toList();
  }
}

final complement = const {
  'G': 'C',
  'C': 'G',
  'T': 'A',
  'A': 'U',
};

class RnaTranscription {
  String toRna(String text) {
    List<String> dna = text.split("");
    if (!complement.keys.toSet().containsAll(dna.toSet()))
      throw ArgumentError("Invalid input");
    return dna.map((i) => complement[i]).join("");
  }
}

final complement = const {
  'G': 'C',
  'C': 'G',
  'T': 'A',
  'A': 'U',
};

class RnaTranscription {
  String toRna(String dna) => dna.split("").map((i) => complement[i]).join("");
}

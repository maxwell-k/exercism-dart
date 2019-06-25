final complement = const {
  'G': 'C',
  'C': 'G',
  'T': 'A',
  'A': 'U',
};

class RnaTranscription {
  String toRna(String dna) => complement[dna];
}

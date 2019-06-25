import 'package:test/test.dart';
import 'package:rna_transcription/rna_transcription.dart';

void main() {
  final RnaTranscription rnaTranscription = new RnaTranscription();

  group('RnaTranscription', () {
    test('transcribes cytosine to guanine', () {
      final String result = rnaTranscription.toRna('C');
      expect(result, equals('G'));
    }, skip: false);

    test('transcribes guanine to cytosine', () {
      final String result = rnaTranscription.toRna('G');
      expect(result, equals('C'));
    });

    test('transcribes adenine to uracil', () {
      final String result = rnaTranscription.toRna('A');
      expect(result, equals('U'));
    });

    test('transcribes thymine to adenine', () {
      final String result = rnaTranscription.toRna('T');
      expect(result, equals('A'));
    });

    test('transcribes all dna nucleotides to their rna complements', () {
      final String result = rnaTranscription.toRna('ACGTGGTCTTAA');
      expect(result, equals('UGCACCAGAAUU'));
    });

    test('correctly handles completely invalid input', () {
      expect(() => rnaTranscription.toRna('XXX'), throwsArgumentError);
    });

    test('correctly handles partially invalid input', () {
      expect(() => rnaTranscription.toRna('ACGTXXXCTTAA'), throwsArgumentError);
    });
  });
}

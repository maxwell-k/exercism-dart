import 'package:anagram/anagram.dart';
import 'package:test/test.dart';

final anagram = new Anagram();

void main() {
  group("simple tests", simpleTests);

  group("slightly less simple tests", slightlyLessSimpleTests);

  group("more challenging tests", moreChallengingTests);

  /// Edge cases are scenarios that are problems that occur under specific conditions
  /// Read more: https://en.wikipedia.org/wiki/Edge_case
  group("edge case tests", edgeCaseTests);
}

void simpleTests() {
  test("no matches", () {
    final List<String> result =
        anagram.findAnagrams("diaper", ["hello", "world", "zombies", "pants"]);
    expect(result, equals(<String>[]));
  }, skip: false);
}

void slightlyLessSimpleTests() {
  test("detects two anagrams", () {
    final List<String> result =
        anagram.findAnagrams("master", ["stream", "pigeon", "maters"]);
    expect(result, equals(["stream", "maters"]));
  });

  test("does not detect anagram subsets", () {
    final List<String> result = anagram.findAnagrams("good", ["dog", "goody"]);
    expect(result, equals(<String>[]));
  });

  test("detects anagram", () {
    final List<String> result = anagram
        .findAnagrams("listen", ["enlists", "google", "inlets", "banana"]);
    expect(result, equals(["inlets"]));
  });

  test("detects three anagrams", () {
    final List<String> result = anagram.findAnagrams("allergy",
        ["gallery", "ballerina", "regally", "clergy", "largely", "leading"]);
    expect(result, equals(["gallery", "regally", "largely"]));
  });
}

void moreChallengingTests() {
  test("does not detect non-anagrams with identical checksum", () {
    final List<String> result = anagram.findAnagrams("mass", ["last"]);
    expect(result, equals(<String>[]));
  });

  test("detects anagrams case-insensitively", () {
    final List<String> result = anagram
        .findAnagrams("Orchestra", ["cashregister", "Carthorse", "radishes"]);
    expect(result, equals(["Carthorse"]));
  });

  test("detects anagrams using case-insensitive subject", () {
    final List<String> result = anagram
        .findAnagrams("Orchestra", ["cashregister", "carthorse", "radishes"]);
    expect(result, equals(["carthorse"]));
  });

  test("detects anagrams using case-insensitive possible matches", () {
    final List<String> result = anagram
        .findAnagrams("orchestra", ["cashregister", "Carthorse", "radishes"]);
    expect(result, equals(["Carthorse"]));
  });
}

void edgeCaseTests() {
  test("does not detect a anagram if the original word is repeated", () {
    final List<String> result = anagram.findAnagrams("go", ["go Go GO"]);
    expect(result, equals(<String>[]));
  }, skip: true);

  test("anagrams must use all letters exactly once", () {
    final List<String> result = anagram.findAnagrams("tapper", ["patter"]);
    expect(result, equals(<String>[]));
  }, skip: true);

  test("words are not anagrams of themselves (case-insensitive)", () {
    final List<String> result =
        anagram.findAnagrams("BANANA", ["BANANA", "Banana", "banana"]);
    expect(result, equals(<String>[]));
  }, skip: true);
}

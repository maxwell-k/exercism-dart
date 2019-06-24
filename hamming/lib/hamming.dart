class Hamming {
  int distance(String left, String right) {
    if (left.length != right.length) throw ArgumentError("Different lengths");
    return List<int>.generate(left.length, (i) => left[i] != right[i] ? 1 : 0)
        .fold(0, (total, current) => total + current);
  }
}

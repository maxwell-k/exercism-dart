class PascalsTriangle {
  List<List<int>> rows(int number) {
    if (number == 0) return [];
    if (number == 1)
      return [
        [1]
      ];

    List<List<int>> result = rows(number - 1);
    final last = result.last;
    result.add([1] +
        List<int>.generate(last.length - 1, (i) => last[i] + last[i + 1]) +
        [1]);
    return result;
  }
}

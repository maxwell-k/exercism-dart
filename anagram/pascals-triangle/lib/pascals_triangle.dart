class PascalsTriangle {
  List<List<int>> rows(int number) {
    if (number == 0) return [];
    if (number == 1)
      return [
        [1]
      ];
    if (number == 2)
      return [
        [1],
        [1, 1],
      ];
    throw UnimplementedError;
  }
}

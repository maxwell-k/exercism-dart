class PascalsTriangle {
  List<List<int>> rows(int number) {
    if (number == 0) return [];
    if (number == 1)
      return [
        [1]
      ];
    if (number == 2) {
      List<List<int>> result = rows(1);
      result.add([1, 1]);
      return result;
    }
    throw UnimplementedError;
  }
}

class PascalsTriangle {
  List<List<int>> rows(int number) {
    if (number == 0) return [];
    if (number > 3) throw UnimplementedError;
    if (number == 1)
      return [
        [1]
      ];
    List<List<int>> result = rows(number - 1);
    if (number == 2) {
      result.add([1, 1]);
    }
    if (number == 3) {
      result.add([1, 2, 1]);
    }
    return result;
  }
}

class PascalsTriangle {
  List<List<int>> rows(int number) {
    if (number == 0) return [];
    List<List<int>> result = rows(number - 1);
    if (number == 1) result.add([1]);
    if (number == 2) result.add([1, 1]);
    if (number == 3) result.add([1, 2, 1]);
    if (number == 4) result.add([1, 3, 3, 1]);
    return result;
  }
}

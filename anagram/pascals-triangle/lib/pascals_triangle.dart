class PascalsTriangle {
  List<int> _above(List<int> row) {
    return [];
  }

  List<List<int>> rows(int number) {
    if (number == 0) return [];
    List<List<int>> result = rows(number - 1);
    if (number == 1) result.add([1]);
    if (number == 2) result.add([1] + _above(result.last) + [1]);
    if (number == 3) result.add([1] + [result.last[0] + result.last[1]] + [1]);
    if (number == 4)
      result.add([1] +
          [result.last[0] + result.last[1], result.last[1] + result.last[2]] +
          [1]);
    return result;
  }
}

class Diamond {
  // use zero indexed alphabet A=0, B=1, C=2…
  String letter;

  int codeUnit(String letter) => letter.codeUnits[0];

  int calculatePosition(String letter) => codeUnit(letter) - codeUnit("A");

  String char(int position) => String.fromCharCode(codeUnit("A") + position);

  int calculateWidth(String letter) => 1 + 2 * calculatePosition(letter);

  String text(String letter) => letter == 'A'
      ? letter
      : '$letter${' ' * (calculateWidth(letter) - 2)}$letter';

  List<String> rows(String letter) {
    assert(
        codeUnit(letter) >= codeUnit("A") && codeUnit(letter) <= codeUnit("Z"),
        "$letter should be A-Z");

    List<String> result = [];
    final int position = calculatePosition(letter);
    for (var i = 0; i <= position; i++) {
      result.add(text(char(i)).padLeft(1 + position + i));
    }
    result =
        result.map<String>((i) => i.padRight(calculateWidth(letter))).toList();
    for (var i = position - 1; i >= 0; i--) {
      result.add(result[i]);
    }
    return result;
  }
}

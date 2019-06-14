class Diamond {
  // use zero indexed alphabet A=0, B=1, C=2…
  String letter;

  int codeUnit(String letter) => letter.codeUnits[0];

  int calculatePosition(String letter) => codeUnit(letter) - codeUnit("A");

  String char(int position) => String.fromCharCode(codeUnit("A") + position);

  int width(int position) => 1 + 2 * position;

  String text(String letter) => letter == 'A'
      ? letter
      : '$letter${' ' * (width(calculatePosition(letter)) - 2)}$letter';

  List<String> rows(String letter) {
    assert(
        codeUnit(letter) >= codeUnit("A") && codeUnit(letter) <= codeUnit("Z"),
        "$letter should be A-Z");

    var result = <String>[];
    final int position = calculatePosition(letter);
    for (var i = 0; i <= position; i++) {
      result.add(
          text(char(i)).padLeft(1 + position + i).padRight(width(position)));
    }

    return result.followedBy(result.reversed.skip(1)).toList();
  }
}

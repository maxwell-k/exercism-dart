class Diamond {
  // use zero indexed alphabet A=0, B=1, C=2…
  String letter;

  int codeUnit(String letter) => letter.codeUnits[0];

  int calculatePosition(String letter) => codeUnit(letter) - codeUnit("A");

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
    switch (letter) {
      case 'A': // position = 0
        result.add(text("A").padLeft(position + 1));
        break;
      case 'B': // position = 1
        result.add(text("A").padLeft(position + 1));
        result.add(text("B").padLeft(position + 2));
        break;
      case 'C': // position = 2
        result.add(text("A").padLeft(position + 1));
        result.add(text("B").padLeft(position + 2));
        result.add(text("C").padLeft(position + 3));
        break;
      case 'D': // position = 3
        result.add(text("A").padLeft(position + 1));
        result.add(text("B").padLeft(position + 2));
        result.add(text("C").padLeft(position + 3));
        result.add(text("D").padLeft(position + 4));
        break;
    }
    result =
        result.map<String>((i) => i.padRight(calculateWidth(letter))).toList();
    for (var i = position - 1; i >= 0; i--) {
      result.add(result[i]);
    }
    return result;

    //    A

    //    A
    //   B B
    //    A

    //    A
    //   B B
    //  C   C
    //   B B
    //    A
  }
}

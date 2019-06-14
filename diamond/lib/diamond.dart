class Diamond {
  String letter;

  int codeUnit(String letter) => letter.codeUnits[0];

  int calculatePosition(String letter) => codeUnit(letter) - codeUnit("A");

  String text(String letter) {
    // without padding
    switch (letter) {
      case 'A':
        return 'A';
        break;
      case 'B':
        return 'B B';
        break;
      case 'C':
        return 'C   C';
        break;
    }
  }

  List<String> rows(String letter) {
    assert(
        codeUnit(letter) >= codeUnit("A") && codeUnit(letter) <= codeUnit("Z"),
        "$letter should be A-Z");

    List<String> result = [];
    // use zero indexed alphabet A=0, B=1, C=2…
    final int position = calculatePosition(letter);
    final int width = 1 + 2 * position;
    result.add(text("A").padLeft(position + 1));
    switch (letter) {
      case 'A':
        break;
      case 'B':
        result.add(text("B"));
        break;
      case 'C':
        result.add(text("B").padLeft(4));
        result.add(text("C"));
        break;
    }
    result = result.map<String>((i) => i.padRight(width)).toList();
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

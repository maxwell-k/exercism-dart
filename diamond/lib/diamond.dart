class Diamond {
  String letter;

  int number(String letter) => letter.codeUnits[0];

  List<String> rows(String letter) {
    assert(number(letter) >= number("A") && number(letter) <= number("Z"),
        "$letter should be A-Z");

    List<String> result = [];
    // use zero indexed alphabet A=0, B=1, C=2…
    final int position = number(letter) - number("A");
    final int width = 1 + 2 * position;
    result.add("A".padLeft(position + 1));
    switch (letter) {
      case 'A':
        break;
      case 'B':
        result.add("$letter${' ' * position}$letter");
        break;
      case 'C':
        result.add("B B".padLeft(4));
        result.add("$letter${' ' * position}$letter");
        break;
    }
    result = result.map<String>((i) => i.padRight(width)).toList();
    for (var i = position - 1; i >= 0; i--) {
      result.add(result[i]);
    }
    return result;

    // 0    A

    //-1    A
    // 0   B B
    // 1    A

    //-2    A
    //-1   B B
    // 0  C   C
    // 1   B B
    // 2    A
  }
}

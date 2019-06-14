class Diamond {
  String letter;

  int number(String letter) => letter.codeUnits[0];

  List<String> rows(String letter) {
    assert(number(letter) >= number("A") && number(letter) <= number("Z"),
        "$letter should be A-Z");

    List<String> result;
    switch (letter) {
      case 'A':
        result = ["A"];
        break;
      case 'B':
        result = [
          "A".padLeft(2).padRight(3),
          "B B",
        ];
        result.add(result[0]);
        break;
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

    //return [" A ", "B B", " A "];
  }
}

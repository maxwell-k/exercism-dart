class Diamond {
  // use zero indexed alphabet A=0, B=1, C=2…
  String letter;
  final a = "A".codeUnitAt(0);
  final z = "Z".codeUnitAt(0);

  int calculatePosition(String letter) => letter.codeUnitAt(0) - a;

  String char(int position) => String.fromCharCode(a + position);

  int width(int position) => 1 + 2 * position;

  String text(String letter) => letter == 'A'
      ? letter
      : '$letter${' ' * (width(calculatePosition(letter)) - 2)}$letter';

  List<String> rows(String letter) {
    assert(letter.codeUnitAt(0) >= a && letter.codeUnitAt(0) <= z,
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

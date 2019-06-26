bool isValid(String isbn) {
  List<String> characters = isbn.replaceAll("-", "").split("");
  if (characters.length != 10) return false;
  if (characters[9] == 'X') characters[9] = '10';

  int total =
      Iterable<int>.generate(10, (i) => int.parse(characters[i]) * (10 - i))
          .reduce((value, element) => value + element);
  return total % 11 == 0;
}

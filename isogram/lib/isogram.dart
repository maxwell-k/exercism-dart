class Isogram {
  bool isIsogram(String word) => word.split("").every((String e) =>
      word.split("").where((i) => i.toLowerCase() == e.toLowerCase()).length ==
      1);
}

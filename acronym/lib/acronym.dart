class Acronym {
  String abbreviate(String phrase) => phrase
      .toUpperCase()
      .split(RegExp(r"[_ -]+"))
      .map((String i) => i[0])
      .join("");
}

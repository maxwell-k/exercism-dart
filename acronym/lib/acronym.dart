class Acronym {
  String abbreviate(String phrase) {
    return phrase
        .toUpperCase()
        .split(RegExp(r"[ -]"))
        .map((String i) => i[0])
        .join("");
  }
}

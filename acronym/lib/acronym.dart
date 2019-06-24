class Acronym {
  String abbreviate(String phrase) {
    return phrase
        .toUpperCase()
        .split(RegExp(r"[ -]+"))
        .map((String i) => i[i.startsWith("_") ? 1 : 0])
        .join("");
  }
}

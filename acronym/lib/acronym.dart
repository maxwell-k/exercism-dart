class Acronym {
  String abbreviate(String phrase) {
    return phrase.toUpperCase().split(" ").map((String i) => i[0]).join("");
  }
}

class Acronym {
  String abbreviate(String phrase) {
    return phrase.split(" ").map((String i) => i[0]).join("");
  }
}

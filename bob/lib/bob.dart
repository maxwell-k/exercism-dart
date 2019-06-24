class Bob {
  String response(String prompt) {
    if (prompt == prompt.toUpperCase()) {
      return "Whoa, chill out!";
    } else if (prompt.endsWith("?")) {
      return "Sure.";
    } else {
      return "Whatever.";
    }
  }
}

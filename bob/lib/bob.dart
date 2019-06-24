class Bob {
  bool yell(String prompt) => prompt == prompt.toUpperCase();
  String response(String prompt) {
    /* return "Calm down, I know what I'm doing!"; } else */
    if (yell(prompt)) {
      return "Whoa, chill out!";
    } else if (prompt.endsWith("?")) {
      return "Sure.";
    } else {
      return "Whatever.";
    }
  }
}

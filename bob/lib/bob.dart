class Bob {
  bool yell(String prompt) => prompt == prompt.toUpperCase();
  bool question(String prompt) => prompt.endsWith("?");
  String response(String prompt) {
    if (yell(prompt) && question(prompt)) {
      return "Calm down, I know what I'm doing!";
    } else if (yell(prompt)) {
      return "Whoa, chill out!";
    } else if (question(prompt)) {
      return "Sure.";
    } else {
      return "Whatever.";
    }
  }
}

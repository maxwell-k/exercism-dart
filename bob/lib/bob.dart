class Bob {
  bool yell(String prompt) =>
      prompt.contains(RegExp(r'[a-zA-Z]')) && prompt == prompt.toUpperCase();
  bool question(String prompt) => prompt.endsWith("?");
  bool silence(String prompt) =>
      prompt.isEmpty || RegExp(r'^\s+$').hasMatch(prompt);
  String response(String prompt) {
    if (yell(prompt) && question(prompt)) {
      return "Calm down, I know what I'm doing!";
    } else if (yell(prompt)) {
      return "Whoa, chill out!";
    } else if (question(prompt)) {
      return "Sure.";
    } else if (silence(prompt)) {
      return "Fine. Be that way!";
    } else {
      return "Whatever.";
    }
  }
}

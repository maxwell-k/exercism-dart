class Bob {
  bool yell(String me) =>
      me.contains(RegExp(r'[a-zA-Z]')) && me == me.toUpperCase();
  bool question(String me) => me.endsWith("?");
  bool silence(String me) => me.isEmpty;
  String response(String input) {
    final me = input.trim();
    if (yell(me) && question(me)) {
      return "Calm down, I know what I'm doing!";
    } else if (yell(me)) {
      return "Whoa, chill out!";
    } else if (question(me)) {
      return "Sure.";
    } else if (silence(me)) {
      return "Fine. Be that way!";
    } else {
      return "Whatever.";
    }
  }
}

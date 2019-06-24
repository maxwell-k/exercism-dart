class Bob {
  bool _yell(String me) => me != me.toLowerCase() && me == me.toUpperCase();
  bool _question(String me) => me.endsWith("?");

  String response(String message) {
    final me = message.trim();

    if (_yell(me) && _question(me)) {
      return "Calm down, I know what I'm doing!";
    } else if (_yell(me)) {
      return "Whoa, chill out!";
    } else if (_question(me)) {
      return "Sure.";
    } else if (me.isEmpty) {
      return "Fine. Be that way!";
    }

    return "Whatever.";
  }
}

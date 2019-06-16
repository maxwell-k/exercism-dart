class MatchingBrackets {
  bool isPaired(String expression) {
    int plain = 0;
    int square = 0;
    int curly = 0;
    for (var i = 0; i < expression.length; i++) {
      switch (expression[i]) {
        case '(':
          plain += 1;
          break;
        case ')':
          plain -= 1;
          break;
        case '[':
          square += 1;
          break;
        case ']':
          square -= 1;
          break;
        case '{':
          curly += 1;
          break;
        case '}':
          curly -= 1;
          break;
      }
      if (plain < 0 || square < 0 || curly < 0) {
        break;
      }
    }
    return plain == 0 && square == 0 && curly == 0;
  }
}

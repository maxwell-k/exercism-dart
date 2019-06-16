class MatchingBrackets {
  bool isPaired(String expression) {
    int square = 0;
    for (var i = 0; i < expression.length; i++) {
      switch (expression[i]) {
        case '[':
          square += 1;
          break;
        case ']':
          square -= 1;
          break;
      }
    }
    return square == 0;
  }
}

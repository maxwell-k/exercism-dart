class MatchingBrackets {
  final corresponding = {
    ')': '(',
    ']': '[',
    '}': '{',
  };
  bool isPaired(String expression) {
    List<String> open = [];
    bool closeBeforeOpen = false;
    for (var i = 0; i < expression.length; i++) {
      if (closeBeforeOpen) break;

      switch (expression[i]) {
        case '(':
        case '[':
        case '{':
          open.add(expression[i]);
          break;
        case ')':
        case ']':
        case '}':
          if (open.length > 0 && open.last == corresponding[expression[i]]) {
            open.removeLast();
          } else {
            closeBeforeOpen = true;
          }
          break;
      }
    }
    return !closeBeforeOpen && open.length == 0;
  }
}

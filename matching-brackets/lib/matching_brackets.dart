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
      final c = expression[i];

      if (closeBeforeOpen) break;

      switch (c) {
        case '(':
        case '[':
        case '{':
          open.add(c);
          break;
        case ')':
        case ']':
        case '}':
          if (open.length > 0 && open.last == corresponding[c]) {
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

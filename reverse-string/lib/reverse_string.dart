String reverse(String input) {
  return List<String>.generate(input.length, (i) => input[input.length - i - 1])
      .join('');
}

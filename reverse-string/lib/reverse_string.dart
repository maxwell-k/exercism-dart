String reverse(String input) {
  final output = StringBuffer();
  for (var index = input.length - 1; index >= 0; index--) {
    output.write(input[index]);
  }
  return output.toString();
}

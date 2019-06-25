class PhoneNumber {
  String clean(String input) {
    String result = input.replaceAll(RegExp(r'[() -.]+'), '');
    return result;
  }
}

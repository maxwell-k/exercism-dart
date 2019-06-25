class PhoneNumber {
  String clean(String input) {
    String result = input.replaceAll(RegExp(r'[() -.]+'), '');
    if (result.length != 10) return null;
    return result;
  }
}

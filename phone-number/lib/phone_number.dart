class PhoneNumber {
  String clean(String input) => input.replaceAll(RegExp(r'[() -]+'), '');
}

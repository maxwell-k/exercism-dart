class PhoneNumber {
  String clean(String input) {
    String result = input.replaceAll(RegExp(r'[() -.]+'), '');
    if (result.startsWith("1")) result = result.substring(1);
    if (result.length != 10) return null;
    if (!RegExp(r'[2-9][0-9]{2}[2-9][0-9]{6}').hasMatch(result)) return null;
    return result;
  }
}

class Luhn {
  bool valid(String number) {
    if (number.length <= 1) return false;
    if (int.tryParse(number[number.length - 1]) == null) return false;
    var digits = List<int>();
    for (var i = 0; i < number.length; i++) {
      int value = int.tryParse(number[i]);
      if (value != null) digits.add(value);
    }
    for (var i = digits.length - 2; i >= 0; i -= 2)
      digits[i] = digits[i] * 2 % 9;
    return digits.reduce((total, element) => total + element) % 10 == 0;
  }
}

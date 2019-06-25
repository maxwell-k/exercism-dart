class Luhn {
  bool valid(String number) {
    var digits = List<int>();

    for (int i = 0; i < number.length; i++) {
      if (number[i] == ' ') continue;
      int value = int.tryParse(number[i]);
      if (value == null) return false;
      digits.add(value);
    }

    if (digits.length <= 1) return false;

    for (int i = digits.length - 2; i >= 0; i -= 2) digits[i] *= 2;

    final total = digits
        .map((i) => i > 9 ? i - 9 : i)
        .reduce((total, element) => total + element);

    return total % 10 == 0;
  }
}

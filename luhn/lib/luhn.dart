class Luhn {
  bool valid(String number) {
    if (number.length <= 1) return false;
    List<int> digits = number.split("").map(int.parse).toList();
    for (var i = digits.length - 2; i >= 0; i -= 2)
      digits[i] = digits[i] * 2 % 9;
    return digits.reduce((total, element) => total + element) % 10 == 0;
  }
}

import 'dart:math' show pow;

class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    final digits = number.toString();
    int sum = 0;

    for (var i = 0; i < digits.length; i++) {
      sum += pow(int.parse(digits[i]), digits.length) as int;
    }
    return number == sum;
  }
}

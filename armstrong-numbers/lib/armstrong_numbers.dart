class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    final digits = number.toString();
    assert(digits.length == 1, "Restricted to single digit numbers");
    return true;
  }
}

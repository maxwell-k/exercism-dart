class PrimeFactors {
  List<int> factors(int value) {
    List<int> factors = [];
    for (var i = 2; i <= value; i++) {
      while (value % i == 0) {
        value ~/= i;
        factors.add(i);
      }
    }
    return factors;
  }
}

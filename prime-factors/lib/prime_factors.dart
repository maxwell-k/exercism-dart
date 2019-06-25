class PrimeFactors {
  List<int> factors(int input) {
    List<int> factors = [];
    for (var i = 2; i <= input; i++) {
      if (input % i == 0) factors.add(i);
    }
    return factors;
  }
}

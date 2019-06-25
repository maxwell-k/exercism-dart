class PrimeFactors {
  List<int> factors(int input) {
    int wip = input;
    List<int> factors = [];
    for (var i = 2; i <= wip; i++) {
      while (wip % i == 0) {
        wip ~/= i;
        factors.add(i);
      }
    }
    return factors;
  }
}

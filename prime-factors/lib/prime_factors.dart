class PrimeFactors {
  List<int> factors(int input) {
    int wip = input;
    List<int> factors = [];
    var i = 2;
    while (i <= input) {
      if (wip % i == 0) {
        wip ~/= i;
        factors.add(i);
      } else
        i++;
    }
    return factors;
  }
}

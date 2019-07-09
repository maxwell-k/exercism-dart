class NthPrime {
  int prime(int n) {
    if (n < 1) throw ArgumentError('There is no zeroth prime');
    return primeNumbers().take(n).last;
  }
}

bool isPrime(int x) => Iterable<int>.generate(x)
    .where((i) => i > 1)
    .where((i) => x % i == 0)
    .isEmpty;

Iterable<int> primeNumbers() sync* {
  int k = 2;
  // ignore: literal_only_boolean_expressions
  while (true) {
    if (isPrime(k)) yield k;
    k++;
  }
}

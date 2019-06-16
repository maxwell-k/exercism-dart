import 'dart:math' show pow;

class DifferenceOfSquares {
  num squareOfSum(num n) {
    num sum = 0;
    for (num i = 1; i <= n; i++) {
      sum += i;
    }
    return pow(sum, 2);
  }

  num sumOfSquare(num n) {
    if (n == 1) return 1; // avoid rounding error
    // https://en.wikipedia.org/wiki/Square_pyramidal_number
    return (pow(n, 3) / 3) + (pow(n, 2) / 2) + (n / 6);
  }

  num differenceOfSquares(num input) => null;
}

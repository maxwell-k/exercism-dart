import 'dart:math' show sqrt;

class Darts {
  int score(double x, double y) {
    final double distance = sqrt(x * x + y * y);
    if (distance <= 10 && distance > 5)
      return 1;
    else if (distance <= 5) return 5;
    return 0;
  }
}

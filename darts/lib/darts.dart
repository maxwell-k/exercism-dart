import 'dart:math' show sqrt;

class Darts {
  int score(double x, double y) {
    final double distance = sqrt(x * x + y * y);
    if (distance > 10) return 0;
    throw UnimplementedError;
  }
}

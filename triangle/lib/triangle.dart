class Triangle {
  bool _valid(num a, num b, num c) =>
      {a, b, c}.every((l) => l > 0) &&
      a < (b + c) &&
      b < (a + c) &&
      c < (a + b);
  bool equilateral(num a, num b, num c) =>
      _valid(a, b, c) && {a, b, c}.length == 1;
  bool isosceles(num a, num b, num c) =>
      _valid(a, b, c) && {a, b, c}.length <= 2;
  bool scalene(num a, num b, num c) => _valid(a, b, c) && {a, b, c}.length == 3;
}

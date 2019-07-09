class Triangle {
  bool _inequality(num a, num b, num c) =>
      a < (b + c) && b < (a + c) && c < (a + b);
  bool equilateral(num a, num b, num c) =>
      _inequality(a, b, c) && {a, b, c}.length == 1 && a != 0;
  bool isosceles(num a, num b, num c) =>
      _inequality(a, b, c) && {a, b, c}.length <= 2;
  bool scalene(num a, num b, num c) => true;
}

class Triangle {
  bool _valid(num a, num b, num c) => a < (b + c);
  bool equilateral(num a, num b, num c) => {a, b, c}.length == 1 && a != 0;
  bool isosceles(num a, num b, num c) =>
      _valid(a, b, c) && {a, b, c}.length <= 2;
  bool scalene(num a, num b, num c) => true;
}

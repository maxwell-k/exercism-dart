class Triangle {
  bool equilateral(num a, num b, num c) => (a == b && b == c);
  bool isosceles(num a, num b, num c) => true;
  bool scalene(num a, num b, num c) => true;
}

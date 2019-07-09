class Triangle {
  bool equilateral(num a, num b, num c) => {a, b, c}.length == 1 && a != 0;
  bool isosceles(num a, num b, num c) => true;
  bool scalene(num a, num b, num c) => true;
}

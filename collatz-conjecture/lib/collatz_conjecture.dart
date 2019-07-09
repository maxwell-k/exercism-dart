class CollatzConjecture {
  // Put your code here
  CollatzConjecture();
  int steps(int n) {
    if (n < 1) throw ArgumentError('Only positive numbers are allowed');
    int count = 0;
    while (n != 1) {
      if (n % 2 == 0)
        n ~/= 2;
      else
        n = 3 * n + 1;
      count++;
    }
    return count;
  }
}

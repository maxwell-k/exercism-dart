class CollatzConjecture {
  // Put your code here
  CollatzConjecture();
  int steps(int n) {
    int count = 0;
    while (n != 1) {
      if (n % 2 == 0) {
        n ~/= 2;
      }
    }
    return count;
  }
}

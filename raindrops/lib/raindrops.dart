class Raindrops {
  String convert(int number) {
    if (number % 3 == 0) {
      return 'Pling';
    }
    return number.toString();
  }
}

final words = const {
  3: 'Pling',
  5: 'Plang',
  7: 'Plong',
};

class Raindrops {
  String convert(int number) {
    for (var i in words.keys) {
      if (number % i == 0) {
        return words[i];
      }
    }
    return number.toString();
  }
}

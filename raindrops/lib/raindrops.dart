final words = const {
  3: 'Pling',
  5: 'Plang',
  7: 'Plong',
};

class Raindrops {
  String convert(int number) {
    String result = '';
    for (var i in words.keys) {
      if (number % i == 0) {
        result += words[i];
      }
    }
    if (result.isEmpty) return number.toString();
    return result;
  }
}

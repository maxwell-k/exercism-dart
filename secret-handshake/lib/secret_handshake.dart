class SecretHandshake {
  List<String> commands(int message) {
    var output = List<String>();
    if (message & 1 > 0) output.add('wink');
    if (message & 2 > 0) output.add('double blink');
    if (message & 4 > 0) output.add('close your eyes');
    if (message & 8 > 0) output.add('jump');
    return (message & 16 > 0) ? output.reversed.toList() : output;
  }
}

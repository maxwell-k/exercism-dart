class SecretHandshake {
  List<String> commands(int message) {
    List<String> output = List<String>();
    if (message & 1 > 0) output.add('wink');
    if (message & 2 > 0) output.add('double blink');
    if (message & 4 > 0) output.add('close your eyes');
    if (message & 8 > 0) output.add('jump');
    if (message & 16 > 0)
      return output.reversed.toList();
    else
      return output;
  }
}

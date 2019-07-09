class SecretHandshake {
  List<String> commands(int message) {
    List<String> output = List<String>();
    if (message & 1 > 0) output.add('wink');
    if (message & 2 > 0) output.add('double blink');
    if (message & 4 > 0) output.add('close your eyes');
    if (message & 8 > 0) output.add('jump');
    /*
    10000 = Reverse the order of the operations in the secret handshake. / 16
    */
    return output;
  }
}

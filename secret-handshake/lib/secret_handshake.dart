class SecretHandshake {
  List<String> commands(int message) {
    List<String> output = List<String>();
    if (message & 1 > 0) output.add('wink');
    /*
    10 = double blink / 2
    100 = close your eyes / 4
    1000 = jump / 8
    10000 = Reverse the order of the operations in the secret handshake. / 16
    */
    return output;
  }
}

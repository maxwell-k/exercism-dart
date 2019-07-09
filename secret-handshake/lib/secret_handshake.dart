class SecretHandshake {
  final _events = const ['wink', 'double blink', 'close your eyes', 'jump'];

  List<String> commands(int message) {
    var output = List<String>();
    for (int i = 0; i < _events.length; i++)
      if (message >> i & 1 == 1) output.add(_events[i]);
    return (message >> _events.length & 1 == 1)
        ? output.reversed.toList()
        : output;
  }
}

class SecretHandshake {
  final _events = const ['wink', 'double blink', 'close your eyes', 'jump'];

  List<String> commands(int message) {
    var output = List<String>();
    for (int i = 0; i < _events.length; i++)
      if (message & 1 << i > 0) output.add(_events[i]);
    return (message & 1 << _events.length > 0)
        ? output.reversed.toList()
        : output;
  }
}

final events = const ['wink', 'double blink', 'close your eyes', 'jump'];

class SecretHandshake {
  List<String> commands(int message) {
    List<String> output = List<String>();
    for (int i = 0; i < events.length; i++)
      if (message & (1 << i) > 0) output.add(events[i]);
    return (message & 1 << events.length > 0)
        ? output.reversed.toList()
        : output;
  }
}

bool mine(String input) => input == '*';

class Offset {
  final int x, y;
  const Offset(this.x, this.y);
}

final List<Offset> offsets = const [
  Offset(-1, -1),
  Offset(-1, 0),
  Offset(-1, 1),
  Offset(0, -1),
  Offset(0, 1),
  Offset(1, 1),
  Offset(1, 0),
  Offset(1, -1),
];

class Minesweeper {
  final List<String> input;

  int get rows => this.input?.length ?? 0;
  int get columns => this.rows > 0 ? input[0].length : 0;

  String value(int x, int y) {
    if (mine(this.input[y][x])) return this.input[y][x];
    return this.input[y][x];
  }

  List<String> get annotated => Iterable<String>.generate(this.rows, (y) {
        var buffer = StringBuffer();
        Iterable<int>.generate(this.columns).forEach((x) {
          buffer.write(value(x, y));
        });
        return buffer.toString();
      }).toList();

  const Minesweeper([List<String> this.input]);
}

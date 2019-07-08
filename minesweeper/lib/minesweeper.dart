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
    final count = offsets.where((n) {
      if (x + n.x < 0) return false;
      if (x + n.x >= columns) return false;
      if (y + n.y < 0) return false;
      if (y + n.y >= rows) return false;
      return mine(this.input[x + n.x][y + n.y]);
    }).length;
    return count == 0 ? ' ' : count.toString();
  }

  List<String> get annotated => Iterable<String>.generate(
      this.rows,
      (y) => Iterable<String>.generate(this.columns, (x) => value(x, y))
          .join('')).toList();

  const Minesweeper([List<String> this.input]);
}

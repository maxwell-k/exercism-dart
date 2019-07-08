class Minesweeper {
  final List<String> input;

  int get rows => this.input?.length ?? 0;
  int get columns => this.rows > 0 ? input[0].length : 0;

  // List<Point> neighbours(int x, int y) {
  //   return [];
  // }

  List<String> get annotated => Iterable<String>.generate(this.rows, (y) {
        var buffer = StringBuffer();
        Iterable<int>.generate(this.columns).forEach((x) {
          buffer.write(this.input[y][x]);
        });
        return buffer.toString();
      }).toList();

  const Minesweeper([List<String> this.input]);
}

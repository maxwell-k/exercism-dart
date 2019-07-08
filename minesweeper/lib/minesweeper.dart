class Minesweeper {
  final List<String> input;

  int get rows => this.input?.length ?? 0;
  int get columns => this.rows > 0 ? input[0].length : 0;

  List<String> get annotated => Iterable<String>.generate(this.rows, (i) {
        var buffer = StringBuffer();
        buffer.write(input[i]);
        return buffer.toString();
      }).toList();

  const Minesweeper([List<String> this.input]);
}

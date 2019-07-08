class Minesweeper {
  final List<String> input;

  List<String> get annotated {
    return this.input;
  }

  int get rows => this.input?.length ?? 0;
  int get columns => this.rows > 0 ? input[0].length : 0;

  const Minesweeper([List<String> this.input]);
}

class Minesweeper {
  List<String> annotated;

  Minesweeper([List<String> input]) {
    var buffer = StringBuffer();
    this.annotated = List<String>();

    final rows = input?.length ?? 0;
    final columns = rows > 0 ? input[0].length : 0;
    for (var i = 0; i < rows; i++) {
      for (var j = 0; j < columns; j++) {
        buffer.write(input[i][j]);
      }
      this.annotated.add(buffer.toString());
      buffer.clear();
    }
  }
}

class RnaTranscription {
  String toRna(String text) => text.split("").map((c) {
        switch (c) {
          case 'G':
            return 'C';
          case 'C':
            return 'G';
          case 'T':
            return 'A';
          case 'A':
            return 'U';
          default:
            throw ArgumentError("Invalid input");
        }
      }).join("");
}

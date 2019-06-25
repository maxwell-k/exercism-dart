const letters = 'abcdefghijklmnopqrstuvwxyz';

class Pangram {
  bool isPangram(String text) {
    Set<String> remaining = letters.split("").toSet();
    text.toLowerCase().split("").forEach((String i) => remaining.remove(i));
    return remaining.isEmpty;
  }
}

import 'dart:math' show pow;

const colours = [
  'black',
  'brown',
  'red',
  'orange',
  'yellow',
  'green',
  'blue',
  'violet',
  'grey',
  'white',
];

class ResistorColorDuo {
  int value(List<String> input) => List.generate(
          input.length,
          (int i) =>
              colours.indexOf(input.reversed.toList()[i]) * pow(10, i) as int)
      .fold(0, (total, current) => total + current);
}

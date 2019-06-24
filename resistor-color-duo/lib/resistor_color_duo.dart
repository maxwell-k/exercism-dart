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
  int value(List<String> input) =>
      colours.indexOf(input[0]) * 10 + colours.indexOf(input[1]);
}

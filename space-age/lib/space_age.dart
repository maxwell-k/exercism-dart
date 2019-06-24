final durations = const {
  "Earth": 1,
};
const period = 31557600;

class SpaceAge {
  double age({String planet, int seconds}) {
    return (100 * seconds / (period * durations[planet])).round() / 100;
  }
}

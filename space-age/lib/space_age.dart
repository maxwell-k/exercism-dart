final durations = const {
  "Earth": 1,
  "Mercury": 0.2408467,
  "Venus": 0.61519726,
  "Mars": 1.8808158,
  "Jupiter": 11.862615,
  "Saturn": 29.447498,
  "Uranus": 84.016846,
  "Neptune": 164.79132,
};
const period = 31557600;

class SpaceAge {
  double age({String planet, int seconds}) =>
    (100 * seconds / (period * durations[planet])).round() / 100;
}

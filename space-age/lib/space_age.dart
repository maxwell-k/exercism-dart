final durations = const {
  "Earth": 31557600,
};

class SpaceAge {
  double age({String planet, int seconds}) {
    return (100 * seconds / durations[planet]).round() / 100;
  }
}

import 'dart:math' show pow;

DateTime add(DateTime birthDate) =>
    birthDate.add(Duration(seconds: pow(10, 9) as int));

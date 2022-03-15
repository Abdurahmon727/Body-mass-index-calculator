import 'dart:math';

String bmi(int weight, int height) {
  double m = weight / pow(height / 100, 2);
  return m.toStringAsFixed(1);
}

double bmiDouble(int weight, int height) {
  return weight / pow(height / 100, 2);
}

String resultB(double bmiC) {
  if (bmiC >= 25) {
    return 'Overweight';
  } else if (bmiC > 18.5) {
    return 'Normal';
  } else {
    return 'UnderWeight';
  }
}

String feedback(double bmiC) {
  if (bmiC >= 25) {
    return 'You have a higher than normal body weight  :(';
  } else if (bmiC > 18.5) {
    return 'You have a normal body, Congratulashin :)';
  } else {
    return 'You have a lower than normal body weight  :(';
  }
}

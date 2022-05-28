import 'dart:math';

class formula {
  double bmi_calulation(int height, int weight) {
    return (weight / pow(height / 100, 2));
  }

  String status(double bmi) {
    if (bmi < 18.5) {
      return "Underweight";
    } else if (bmi > 18.5 && bmi < 24.9) {
      return "Normal";
    } else if (bmi > 24.9 && bmi < 30) {
      return "Overweight";
    } else {
      return "Need Checkup";
    }
  }
}

import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  CalculatorBrain({
    required this.height,
    required this.weight,
  }) : _bmi = weight / pow(height / 100, 2);

  final double _bmi;

  String calculateBMI() {
    print('the bmi is $_bmi');
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You are fat, work out!';
    } else if (_bmi >= 18.5) {
      return 'You are normal, good job';
    } else {
      return 'You a lil skinny ass bitch, eat more';
    }
  }
}

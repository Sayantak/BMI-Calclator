import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = (weight-20) / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 28)
      return 'Overweight';
    else if (_bmi > 16.5)
      return 'Normal';
    else
      return 'Underweight';
  }

  String getInterpretation() {
    if (_bmi >= 28)
      return 'You\'ve a higher than normal body weight. Try to exercise more!';
    else if (_bmi > 16.5)
      return 'You\'ve a normal body weight. Good Job!';
    else
      return 'You\'ve a lower than normal body weight. You can eat a little bit more.';
  }
}

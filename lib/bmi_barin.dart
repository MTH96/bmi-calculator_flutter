import 'dart:math';

class BmiBrain {
  int bmiWeight, bmiHeight;
  double _bmi;

  BmiBrain({this.bmiWeight, this.bmiHeight});

  String bmiCalculator() {
    _bmi = (bmiWeight) / pow(bmiHeight / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String bmiResult() {
    if (_bmi > 35)
      return 'Extremly Obese';
    else if (_bmi > 30)
      return 'Obese';
    else if (_bmi > 25)
      return 'Over Weight';
    else if (_bmi > 18.5)
      return 'Normal';
    else
      return 'Underweight';
  }

  String bmiAdvice() {
    if (_bmi > 35)
      return 'You have away too higher than normal body weight. you shold see a doctor';
    else if (_bmi > 30)
      return 'You have a way higher than normal body weight. try to excersie';
    else if (_bmi > 25)
      return 'You have a higher than normal body weight. try to excersie';
    else if (_bmi > 18.5)
      return 'You have a normal body. Good job';
    else
      return 'You have a lower than normal body weight . You can eat a bit more';
  }
}

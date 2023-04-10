import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double
      _bmi; // we create private function which is used all line in this page(because '{}' its limited and only used in this curly bracket.
  String calculateBMI() {
    _bmi = weight /
        pow(height / 100,
            2); //pow is function which apply when u match function is has a power(2x2=4),
    //also to convert the cm to m then we have to divided to 100,

    return _bmi.toStringAsFixed(
        1); // its mean that value is return that r fixed to only single DIGIT(0.8)
  }

  //the curly bracket is limited and only till line no(22-30,32-41)
  String getResult() {
    if (_bmi >= 20) {
      return 'OVER WEIGHT';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UNDER WEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 20) {
      return 'You Have a Higher Than Normal Weight. Try To exercise more. ';
    } else if (_bmi > 18.5) {
      return 'You Have a Normal Body Weight. Its GREAT';
    } else {
      return 'You Have A Lower Than Normal Body Weight. Try To Eat More.';
    }
  }
}

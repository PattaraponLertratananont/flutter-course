class Calculator {
  String _input = "";
  String _oldInput = "";
  String _operator = "";
  String _display = "";
  Calculator([int result = 0]) {
    _display = result.toString();
  }

  double? get result => double.tryParse(_display);
  double? get input => double.tryParse(_input);
  double? get oldInput => double.tryParse(_oldInput);

  void pressAC() {
    if (_oldInput.isNotEmpty && _operator.isNotEmpty) {
      _input = "";
      _display = "0";
    } else {
      _input = "";
      _oldInput = "";
      _operator = "";
      _display = "0";
    }
  }

  void pressNumberic(int numberic) {
    _input += numberic.toString();
    _display = _input.toString();
  }

  void pressPlus() {
    pressOperator("+");
  }

  void pressMinus() {
    pressOperator("-");
  }

  void pressDivide() {
    pressOperator("/");
  }

  void pressMultiply() {
    pressOperator("x");
  }

  void pressOperator(String operator) {
    _operator = operator;
    _oldInput = _input;
    _input = "";
  }

  void pressEqual() {
    _display = Operator(oldInput!, _operator).calculate(input);
    _input = _display;
    _oldInput = "";
    _operator = "";
  }
}

class Operator {
  double baseValue;
  String operator;
  Operator(this.baseValue, this.operator);

  String calculate(double? value) {
    switch (operator) {
      case "-":
        return (baseValue - (value ?? baseValue)).toString();
      case "/":
        return (baseValue / (value ?? baseValue)).toString();
      case "x":
        return (baseValue * (value ?? baseValue)).toString();
      default:
        return (baseValue + (value ?? baseValue)).toString();
    }
  }
}

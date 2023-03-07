class Calculator {
  String oldValue = "0";
  String value = "0";
  String operator = "";

  clearAll() {
    oldValue = "0";
    value = "0";
    operator = "";
  }

  percentage() {
    value = (double.parse(value) / 100).toString();
  }

  updateValue(int numberic) {
    if (operator.isNotEmpty) {
      oldValue = value;
      value = numberic.toString();
    } else {
      oldValue = value;
      if (value == "0") {
        value = numberic.toString();
      } else {
        value += numberic.toString();
      }
    }
  }

  setOperator(String operator) {
    this.operator = operator;
  }

  calculate() {
    switch (operator) {
      case "+":
        value =
            (double.parse(oldValue) + double.parse(value)).toInt().toString();
        break;
      case "-":
        value =
            (double.parse(oldValue) - double.parse(value)).toInt().toString();
        break;
      case "x":
        value =
            (double.parse(oldValue) * double.parse(value)).toInt().toString();
        break;
      case "/":
        value = double.parse((double.parse(oldValue) / double.parse(value))
                .toStringAsFixed(4))
            .toString();
        break;
      default:
    }
    oldValue = "0";
    operator = "";
  }
}

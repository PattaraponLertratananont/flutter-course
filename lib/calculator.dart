class Calculator {
  String value = "0";
  String operator = "";
  String oldValue = "";

  void allClear() {
    value = "0";
    operator = "";
    oldValue = "";
  }

  void calculate() {
    var intOldValue = int.parse(oldValue);
    var intValue = (int.tryParse(value) ?? 0);
    var result = intOldValue * intValue;
    value = result.toString();
  }

  void onTabOperator(String operator) {
    this.operator = operator;
  }

  void onTabOperand(String operand) {
    if (operator.isNotEmpty) {
      oldValue = value;
    }
    value = operand;
  }
}

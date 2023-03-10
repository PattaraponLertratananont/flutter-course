import 'package:calculator/calculator.dart';
import 'package:test/test.dart';

void main() {
  group("Calculator", () {
    late Calculator calculator;
    setUp(() {
      calculator = Calculator();
    });

    tearDown(() {});

    setUpAll(() {});

    tearDownAll(() {});

    test("value should be return 12", () {
      //arrange  given
      calculator.value = "2";
      calculator.operator = "x";
      calculator.oldValue = "6";
      //act when
      calculator.calculate();
      //assert then
      expect(calculator.value, "12");
    });

    test("The data should be clear", () {
      calculator.value = "2";
      calculator.operator = "x";
      calculator.oldValue = "7";

      calculator.allClear();

      expect(calculator.value, "0");
      expect(calculator.operator, "");
      expect(calculator.oldValue, "");
    });
  });
}

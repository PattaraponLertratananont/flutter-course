import 'package:calculator/calculator/model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Calculator model", () {
    test("press 0 should display 0", () {
      final calculator = Calculator();
      calculator.pressNumberic(0);
      expect(calculator.result, 0);
    });

    test("press 1 should display 1", () {
      final calculator = Calculator();
      calculator.pressNumberic(1);
      expect(calculator.result, 1);
    });

    test("press 1 and 0 should display 10", () {
      final calculator = Calculator();
      calculator.pressNumberic(1);
      expect(calculator.result, 1);
      calculator.pressNumberic(0);
      expect(calculator.result, 10);
    });

    test("press 0 and 1 should display 1", () {
      final calculator = Calculator();
      calculator.pressNumberic(0);
      calculator.pressNumberic(1);
      expect(calculator.result, 1);
    });

    test("press AC should clear result to 0", () {
      final calculator = Calculator(10);
      calculator.pressAC();
      expect(calculator.result, 0);
    });

    group("Plus", () {
      test("press 1 > plus should display 1", () {
        final calculator = Calculator();
        calculator.pressNumberic(1);
        calculator.pressPlus();
        expect(calculator.result, 1);
      });

      test("press 1 > plus > 1 > 0 > equal should display 11", () {
        final calculator = Calculator();
        calculator.pressNumberic(1);
        calculator.pressPlus();
        calculator.pressNumberic(1);
        calculator.pressNumberic(0);
        expect(calculator.result, 10);
        calculator.pressEqual();
        expect(calculator.result, 11);
      });

      test("press 1 > plus > 2 > equal should display 3", () {
        final calculator = Calculator();
        calculator.pressNumberic(1);
        calculator.pressPlus();
        calculator.pressNumberic(2);
        expect(calculator.oldInput, 1);
        expect(calculator.input, 2);
        calculator.pressEqual();
        expect(calculator.result, 3);
      });

      test("press 2 > plus > equal should display 4", () {
        final calculator = Calculator();
        calculator.pressNumberic(2);
        calculator.pressPlus();
        calculator.pressEqual();
        expect(calculator.result, 4);
      });
    });

    group("Minus", () {
      test("press 1 > minus should display 1", () {
        final calculator = Calculator();
        calculator.pressNumberic(1);
        calculator.pressMinus();
        expect(calculator.result, 1);
      });

      test("press 1 > minus > 1 > 0 > equal should display -9", () {
        final calculator = Calculator();
        calculator.pressNumberic(1);
        calculator.pressMinus();
        calculator.pressNumberic(1);
        calculator.pressNumberic(0);
        calculator.pressEqual();
        expect(calculator.result, -9);
      });

      test("press 1 > minus > 2 > equal should display -1", () {
        final calculator = Calculator();
        calculator.pressNumberic(1);
        calculator.pressMinus();
        calculator.pressNumberic(2);
        calculator.pressEqual();
        expect(calculator.result, -1);
      });

      test("press 2 > 0 > minus > equal should clear display to 0", () {
        final calculator = Calculator();
        calculator.pressNumberic(2);
        calculator.pressNumberic(0);
        calculator.pressMinus();
        calculator.pressEqual();
        expect(calculator.result, 0);
      });
    });

    group("Divide", () {
      test("press 1 > divide should display 1", () {
        final calculator = Calculator();
        calculator.pressNumberic(1);
        calculator.pressDivide();
        expect(calculator.result, 1);
      });

      test("press 5 > divide > 2 > 5 > equal should display 0.2", () {
        final calculator = Calculator();
        calculator.pressNumberic(5);
        calculator.pressDivide();
        calculator.pressNumberic(2);
        calculator.pressNumberic(5);
        expect(calculator.oldInput, 5);
        expect(calculator.input, 25);
        calculator.pressEqual();
        expect(calculator.result, 5 / 25);
      });

      test("press 1 > divide > 8 > equal should display 0.125", () {
        final calculator = Calculator();
        calculator.pressNumberic(1);
        calculator.pressDivide();
        calculator.pressNumberic(8);
        calculator.pressEqual();
        expect(calculator.result, 0.125);
      });

      test(
          "press 2 > 0 > divide > equal should divide with same value (should alway display 1)",
          () {
        final calculator = Calculator();
        calculator.pressNumberic(2);
        calculator.pressNumberic(0);
        calculator.pressDivide();
        calculator.pressEqual();
        expect(calculator.result, 1);
      });
    });

    group("Multiply", () {
      test("press 1 > multiply should display 1", () {
        final calculator = Calculator();
        calculator.pressNumberic(1);
        calculator.pressMultiply();
        expect(calculator.result, 1);
      });

      test("press 5 > multiply > 4 > 9 > equal should display 245", () {
        final calculator = Calculator();
        calculator.pressNumberic(5);
        calculator.pressMultiply();
        calculator.pressNumberic(4);
        calculator.pressNumberic(9);
        expect(calculator.oldInput, 5);
        expect(calculator.input, 49);
        calculator.pressEqual();
        expect(calculator.result, 5 * 49);
      });

      test("press 1 > multiply > 9 > equal should display 9", () {
        final calculator = Calculator();
        calculator.pressNumberic(1);
        calculator.pressMultiply();
        calculator.pressNumberic(9);
        calculator.pressEqual();
        expect(calculator.result, 9);
      });

      test("press 8 > multiply > equal should multiply with same value", () {
        final calculator = Calculator();
        calculator.pressNumberic(8);
        calculator.pressMultiply();
        calculator.pressEqual();
        expect(calculator.result, 8 * 8);
      });
    });
  });
}

import 'package:calculator/calculator/model.dart';
import 'package:flutter/material.dart';

final calculator = Calculator();

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double space = 16;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: space),
              width: MediaQuery.of(context).size.width,
              child: Text(
                calculator.result,
                textAlign: TextAlign.end,
                style: const TextStyle(fontSize: 50, color: Colors.white),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CalculatorButton(label: "AC", onPressed: calculator.pressAC),
                CalculatorButton(label: "+/-", onPressed: () {}),
                CalculatorButton(
                    label: "%", onPressed: calculator.pressPercentage),
                CalculatorButton(label: "÷", onPressed: calculator.pressDivide),
              ],
            ),
            SizedBox(height: space),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CalculatorButton(
                    label: "7", onPressed: () => calculator.pressNumberic(7)),
                CalculatorButton(
                    label: "8", onPressed: () => calculator.pressNumberic(8)),
                CalculatorButton(
                    label: "9", onPressed: () => calculator.pressNumberic(9)),
                CalculatorButton(
                    label: "x", onPressed: calculator.pressMultiply),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String label;
  final void Function() onPressed;
  const CalculatorButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        fixedSize: Size((MediaQuery.of(context).size.width / 4) - 16,
            (MediaQuery.of(context).size.width / 4) - 16),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: const TextStyle(fontSize: 30),
      ),
    );
  }
}

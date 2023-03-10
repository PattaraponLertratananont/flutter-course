import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String value = "0";
  String operator = "";
  String oldValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                value,
                style: const TextStyle(
                  fontSize: 54,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CalculatorButton(
                    label: "AC",
                    bgColor: Colors.grey,
                    labelColor: Colors.white,
                    onPressed: allClear,
                  ),
                  CalculatorButton(
                    label: "=",
                    bgColor: Colors.amber.shade800,
                    labelColor: Colors.white,
                    onPressed: calculate,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CalculatorButton(
                    label: "7",
                    bgColor: Colors.grey.shade800,
                    labelColor: Colors.white,
                    onPressed: () => onTabOperand("7"),
                  ),
                  CalculatorButton(
                    label: "8",
                    bgColor: Colors.grey.shade800,
                    labelColor: Colors.white,
                    onPressed: () => onTabOperand("8"),
                  ),
                  CalculatorButton(
                    label: "9",
                    bgColor: Colors.grey.shade800,
                    labelColor: Colors.white,
                    onPressed: () => onTabOperand("9"),
                  ),
                  CalculatorButton(
                    label: "x",
                    bgColor: Colors.amber.shade800,
                    labelColor: Colors.white,
                    onPressed: () => onTabOperator("x"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onTabOperand(String operand) {
    setState(() {
      if (operator.isNotEmpty) oldValue = value;
      value = operand;
    });
  }

  void onTabOperator(String operator) {
    setState(() {
      this.operator = operator;
    });
  }

  void calculate() {
    setState(() {
      var intOldValue = int.parse(oldValue);
      var intValue = (int.tryParse(value) ?? 0);
      var result = intOldValue * intValue;
      value = result.toString();
    });
  }

  void allClear() {
    setState(() {
      value = "0";
      operator = "";
      oldValue = "";
    });
  }
}

class CalculatorButton extends StatelessWidget {
  final String label;
  final Color labelColor;
  final Color bgColor;
  final void Function()? onPressed;
  const CalculatorButton({
    super.key,
    required this.label,
    required this.labelColor,
    required this.bgColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: bgColor,
        fixedSize: Size(
          MediaQuery.of(context).size.width * 0.2,
          MediaQuery.of(context).size.width * 0.2,
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: labelColor,
          fontSize: 24,
        ),
      ),
    );
  }
}

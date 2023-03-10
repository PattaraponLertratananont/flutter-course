import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CalculatorButton(
                    label: "AC",
                    bgColor: Colors.grey,
                    labelColor: Colors.white,
                    onPressed: () {},
                  ),
                  CalculatorButton(
                    label: "=",
                    bgColor: Colors.amber.shade800,
                    labelColor: Colors.white,
                    onPressed: () {},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CalculatorButton(
                    label: "7",
                    bgColor: Colors.grey.shade800,
                    labelColor: Colors.white,
                    onPressed: () {},
                  ),
                  CalculatorButton(
                    label: "8",
                    bgColor: Colors.grey.shade800,
                    labelColor: Colors.white,
                    onPressed: () {},
                  ),
                  CalculatorButton(
                    label: "9",
                    bgColor: Colors.grey.shade800,
                    labelColor: Colors.white,
                    onPressed: () {},
                  ),
                  CalculatorButton(
                    label: "x",
                    bgColor: Colors.amber.shade800,
                    labelColor: Colors.white,
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
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

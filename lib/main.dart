import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyCalculator(),
    );
  }
}

class MyCalculator extends StatelessWidget {
  const MyCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 16, bottom: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "0",
                    style: TextStyle(color: Colors.white, fontSize: 60),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonCalculator(
                  "AC",
                  bgColor: const Color(0xFFCDCDCD),
                  valueColor: Colors.black,
                  onPressed: () {},
                ),
                const ButtonCalculator(
                  "...",
                  bgColor: Color(0xFFCDCDCD),
                  valueColor: Colors.black,
                  onPressed: null,
                ),
                ButtonCalculator(
                  "%",
                  bgColor: const Color(0xFFCDCDCD),
                  valueColor: Colors.black,
                  onPressed: () {},
                ),
                ButtonCalculator(
                  "÷",
                  bgColor: Colors.amber,
                  valueColor: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonCalculator(
                  "7",
                  bgColor: Colors.grey.shade800,
                  valueColor: Colors.white,
                  onPressed: () {},
                ),
                ButtonCalculator(
                  "8",
                  bgColor: Colors.grey.shade800,
                  valueColor: Colors.white,
                  onPressed: () {},
                ),
                ButtonCalculator(
                  "9",
                  bgColor: Colors.grey.shade800,
                  valueColor: Colors.white,
                  onPressed: () {},
                ),
                ButtonCalculator(
                  "x",
                  bgColor: Colors.amber,
                  valueColor: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonCalculator(
                  "4",
                  bgColor: Colors.grey.shade800,
                  valueColor: Colors.white,
                  onPressed: () {},
                ),
                ButtonCalculator(
                  "5",
                  bgColor: Colors.grey.shade800,
                  valueColor: Colors.white,
                  onPressed: () {},
                ),
                ButtonCalculator(
                  "6",
                  bgColor: Colors.grey.shade800,
                  valueColor: Colors.white,
                  onPressed: () {},
                ),
                ButtonCalculator(
                  "-",
                  bgColor: Colors.amber,
                  valueColor: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonCalculator(
                  "1",
                  bgColor: Colors.grey.shade800,
                  valueColor: Colors.white,
                  onPressed: () {},
                ),
                ButtonCalculator(
                  "2",
                  bgColor: Colors.grey.shade800,
                  valueColor: Colors.white,
                  onPressed: () {},
                ),
                ButtonCalculator(
                  "3",
                  bgColor: Colors.grey.shade800,
                  valueColor: Colors.white,
                  onPressed: () {},
                ),
                ButtonCalculator(
                  "+",
                  bgColor: Colors.amber,
                  valueColor: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ButtonZero(
                  onPressed: () {},
                ),
                const SizedBox(width: 12),
                ButtonCalculator(
                  "...",
                  bgColor: Colors.grey.shade800,
                  valueColor: Colors.white,
                  onPressed: null,
                ),
                const SizedBox(width: 12),
                ButtonCalculator(
                  "=",
                  bgColor: Colors.amber,
                  valueColor: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonZero extends StatelessWidget {
  final void Function()? onPressed;
  const ButtonZero({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                MediaQuery.of(context).size.width * 0.175),
          ),
          fixedSize: Size(
            MediaQuery.of(context).size.width * 0.2,
            MediaQuery.of(context).size.width * 0.2,
          ),
          backgroundColor: Colors.grey.shade800,
          disabledBackgroundColor: Colors.grey.shade800,
        ),
        onPressed: onPressed,
        child: Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 16),
          child: const Text(
            "0",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
    );
  }
}

class ButtonCalculator extends StatelessWidget {
  final String value;
  final Color valueColor;
  final Color bgColor;
  final void Function()? onPressed;
  const ButtonCalculator(
    this.value, {
    super.key,
    required this.valueColor,
    required this.bgColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        fixedSize: Size(
          MediaQuery.of(context).size.width * 0.2,
          MediaQuery.of(context).size.width * 0.2,
        ),
        backgroundColor: bgColor,
        disabledBackgroundColor: bgColor,
      ),
      onPressed: onPressed,
      child: Text(
        value,
        style: TextStyle(color: valueColor, fontSize: 24),
      ),
    );
  }
}

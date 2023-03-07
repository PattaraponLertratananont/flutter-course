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
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.2,
                      MediaQuery.of(context).size.width * 0.2,
                    ),
                    backgroundColor: const Color(0xFFCDCDCD),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "AC",
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.2,
                      MediaQuery.of(context).size.width * 0.2,
                    ),
                    backgroundColor: const Color(0xFFCDCDCD),
                    disabledBackgroundColor: const Color(0xFFCDCDCD),
                  ),
                  onPressed: null,
                  child: const Text(
                    "...",
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.2,
                      MediaQuery.of(context).size.width * 0.2,
                    ),
                    backgroundColor: const Color(0xFFCDCDCD),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "%",
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.2,
                      MediaQuery.of(context).size.width * 0.2,
                    ),
                    backgroundColor: Colors.amber,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "÷",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.2,
                      MediaQuery.of(context).size.width * 0.2,
                    ),
                    backgroundColor: Colors.grey.shade800,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "7",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.2,
                      MediaQuery.of(context).size.width * 0.2,
                    ),
                    backgroundColor: Colors.grey.shade800,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "8",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.2,
                      MediaQuery.of(context).size.width * 0.2,
                    ),
                    backgroundColor: Colors.grey.shade800,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "9",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.2,
                      MediaQuery.of(context).size.width * 0.2,
                    ),
                    backgroundColor: Colors.amber,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "x",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.2,
                      MediaQuery.of(context).size.width * 0.2,
                    ),
                    backgroundColor: Colors.grey.shade800,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "4",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.2,
                      MediaQuery.of(context).size.width * 0.2,
                    ),
                    backgroundColor: Colors.grey.shade800,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "5",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.2,
                      MediaQuery.of(context).size.width * 0.2,
                    ),
                    backgroundColor: Colors.grey.shade800,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "6",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.2,
                      MediaQuery.of(context).size.width * 0.2,
                    ),
                    backgroundColor: Colors.amber,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "-",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.2,
                      MediaQuery.of(context).size.width * 0.2,
                    ),
                    backgroundColor: Colors.grey.shade800,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "1",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.2,
                      MediaQuery.of(context).size.width * 0.2,
                    ),
                    backgroundColor: Colors.grey.shade800,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "2",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.2,
                      MediaQuery.of(context).size.width * 0.2,
                    ),
                    backgroundColor: Colors.grey.shade800,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "3",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.2,
                      MediaQuery.of(context).size.width * 0.2,
                    ),
                    backgroundColor: Colors.amber,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "+",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
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
                    ),
                    onPressed: () {},
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 16),
                      child: const Text(
                        "0",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.2,
                      MediaQuery.of(context).size.width * 0.2,
                    ),
                    backgroundColor: Colors.grey.shade800,
                    disabledBackgroundColor: Colors.grey.shade800,
                  ),
                  statesController: MaterialStatesController(),
                  onPressed: null,
                  child: const Text(
                    "...",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                const SizedBox(width: 12),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    fixedSize: Size(
                      MediaQuery.of(context).size.width * 0.2,
                      MediaQuery.of(context).size.width * 0.2,
                    ),
                    backgroundColor: Colors.amber,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "=",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

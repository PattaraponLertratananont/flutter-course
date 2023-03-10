import 'package:calculator/home.dart'; // Homepage
import 'package:flutter/material.dart'; // Key
import 'package:flutter_test/flutter_test.dart'; // testWidgets

void main() {
  testWidgets("คูณตัวเลข หนึ่ง ตำแหน่ง", (tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: HomePage()),
    );
    final button7 = find.byKey(const Key("button-7"));
    expect(button7, findsOneWidget);
    final buttonMultiply = find.byKey(const Key("button-x"));
    expect(buttonMultiply, findsOneWidget);
    final buttonEqual = find.byKey(const Key("button-="));
    expect(buttonEqual, findsOneWidget);

    await tester.tap(button7);
    await tester.tap(buttonMultiply);
    await tester.tap(button7);
    await tester.tap(buttonEqual);
    await tester.pumpAndSettle();

    expect(find.text("49"), findsOneWidget);
  });
}

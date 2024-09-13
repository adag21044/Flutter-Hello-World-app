import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hello_word/main.dart'; // Projenizdeki `main.dart` dosyasının yolu

void main() {
  testWidgets('Hello World Button test', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(const HelloWorldApp());

    // Verify that initially, the text is empty.
    expect(find.text('Hello, World!'), findsNothing);

    // Tap the 'Show Hello World' button and trigger a frame.
    await tester.tap(find.text('Show Hello World'));
    await tester.pump();

    // Verify that the text is now 'Hello, World!'.
    expect(find.text('Hello, World!'), findsOneWidget);
  });
}

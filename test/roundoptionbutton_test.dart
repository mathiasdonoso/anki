import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:anki/RoundOptionButton.dart';

void main() {
  testWidgets('Widget creates button with properties', (WidgetTester tester) async {
    await tester.pumpWidget(
      new Directionality(
        textDirection: TextDirection.ltr,
        child: RoundOptionButton.large(
          text: 'Test Element',
          color: Colors.green,
          onPressed: () {}
        ),
      )
    );

    final buttonText = find.text('Test Element');
    expect(buttonText, findsOneWidget);
  });
}
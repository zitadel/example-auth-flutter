import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:zitadel_flutter/main.dart';

void main() {
  testWidgets('App shows login button when not authenticated',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    expect(find.text('You are not authenticated.'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);
    expect(find.byIcon(Icons.fingerprint), findsOneWidget);
  });
}

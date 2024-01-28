import 'package:basic_flutter/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// rewriting the testcases as per our application
void main() {
  testWidgets("Hello world test", (WidgetTester tester) async {
    //pumpWidget is used to build the widget tree
    await tester.pumpWidget(const MyApp());

    //expect function is used to find the widget in the widget tree
    expect(find.byType(Container), findsOneWidget);
    expect(find.text("Hello world"), findsOneWidget);
  });
}

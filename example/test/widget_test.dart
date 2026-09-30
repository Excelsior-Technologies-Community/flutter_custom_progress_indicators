import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_custom_progress_indicators/flutter_custom_progress_indicators.dart';

void main() {
  testWidgets('Circular progress renders correctly', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: CustomCircularProgress(
            value: 0.5,
          ),
        ),
      ),
    );

    expect(find.text('50%'), findsOneWidget);
  });

  testWidgets('Animated linear progress renders correctly', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: AnimatedLinearProgress(
            value: 0.7,
          ),
        ),
      ),
    );

    expect(find.byType(AnimatedLinearProgress), findsOneWidget);
  });

  testWidgets('Gradient progress renders correctly', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: GradientLinearProgress(
            value: 0.8,
          ),
        ),
      ),
    );

    expect(find.byType(GradientLinearProgress), findsOneWidget);
  });

  testWidgets('Percentage progress renders correctly', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: PercentageProgress(
            value: 0.9,
          ),
        ),
      ),
    );

    expect(find.text('90%'), findsOneWidget);
  });
}
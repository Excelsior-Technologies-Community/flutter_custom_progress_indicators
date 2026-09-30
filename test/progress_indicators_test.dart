import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_custom_progress_indicators/flutter_custom_progress_indicators.dart';

void main() {
  test('Progress value is clamped correctly', () {
    expect(clampProgress(-1), 0.0);
    expect(clampProgress(0.5), 0.5);
    expect(clampProgress(2), 1.0);
  });

  test('Progress percentage is calculated correctly', () {
    expect(progressPercentage(0), 0);
    expect(progressPercentage(0.5), 50);
    expect(progressPercentage(1), 100);
  });

  testWidgets('Animated linear progress works', (tester) async {
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

  testWidgets('Circular progress works', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: CustomCircularProgress(
            value: 0.5,
          ),
        ),
      ),
    );

    expect(find.byType(CustomCircularProgress), findsOneWidget);
    expect(find.text('50%'), findsOneWidget);
  });

  testWidgets('Gradient progress works', (tester) async {
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

  testWidgets('Percentage progress works', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: PercentageProgress(
            value: 0.9,
          ),
        ),
      ),
    );

    expect(find.byType(PercentageProgress), findsOneWidget);
    expect(find.text('90%'), findsOneWidget);
  });
}
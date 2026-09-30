import 'package:flutter/material.dart';
import '../utils/progress_utils.dart';

class GradientLinearProgress extends StatelessWidget {
  final double value;
  final double height;
  final List<Color> colors;
  final Color backgroundColor;
  final BorderRadius borderRadius;
  final Duration duration;

  const GradientLinearProgress({
    super.key,
    required this.value,
    this.height = 12,
    this.colors = const [
      Colors.blue,
      Colors.purple,
    ],
    this.backgroundColor = Colors.grey,
    this.borderRadius = const BorderRadius.all(
      Radius.circular(10),
    ),
    this.duration = const Duration(milliseconds: 800),
  });

  @override
  Widget build(BuildContext context) {
    final progress = clampProgress(value);

    return ClipRRect(
      borderRadius: borderRadius,
      child: Container(
        height: height,
        color: backgroundColor,
        child: TweenAnimationBuilder<double>(
          tween: Tween<double>(
            begin: 0,
            end: progress,
          ),
          duration: duration,
          builder: (context, value, child) {
            return FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: value,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: colors,
                  ),
                  borderRadius: borderRadius,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
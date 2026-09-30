import 'package:flutter/material.dart';
import '../utils/progress_utils.dart';

class AnimatedLinearProgress extends StatelessWidget {
  final double value;
  final double height;
  final Color progressColor;
  final Color backgroundColor;
  final Duration duration;
  final BorderRadius borderRadius;

  const AnimatedLinearProgress({
    super.key,
    required this.value,
    this.height = 10,
    this.progressColor = Colors.blue,
    this.backgroundColor = Colors.grey,
    this.duration = const Duration(milliseconds: 800),
    this.borderRadius = const BorderRadius.all(
      Radius.circular(10),
    ),
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
                  color: progressColor,
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
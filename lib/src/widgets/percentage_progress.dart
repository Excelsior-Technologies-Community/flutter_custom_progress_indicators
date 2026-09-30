import 'package:flutter/material.dart';
import '../utils/progress_utils.dart';

class PercentageProgress extends StatelessWidget {
  final double value;
  final double height;
  final String? text;
  final List<Color>? gradientColors;
  final Color progressColor;
  final Color backgroundColor;
  final Color textColor;
  final double fontSize;
  final BorderRadius borderRadius;
  final Duration duration;

  const PercentageProgress({
    super.key,
    required this.value,
    this.height = 30,
    this.text,
    this.gradientColors,
    this.progressColor = Colors.blue,
    this.backgroundColor = Colors.grey,
    this.textColor = Colors.white,
    this.fontSize = 14,
    this.borderRadius = const BorderRadius.all(
      Radius.circular(10),
    ),
    this.duration = const Duration(milliseconds: 800),
  });

  @override
  Widget build(BuildContext context) {
    final progress = clampProgress(value);
    final percentage = progressPercentage(value);

    return ClipRRect(
      borderRadius: borderRadius,
      child: Container(
        height: height,
        color: backgroundColor,
        child: Stack(
          alignment: Alignment.center,
          children: [
            TweenAnimationBuilder<double>(
              tween: Tween<double>(
                begin: 0,
                end: progress,
              ),
              duration: duration,
              builder: (context, value, child) {
                return Align(
                  alignment: Alignment.centerLeft,
                  child: FractionallySizedBox(
                    widthFactor: value,
                    child: Container(
                      decoration: BoxDecoration(
                        color: gradientColors == null
                            ? progressColor
                            : null,
                        gradient: gradientColors == null
                            ? null
                            : LinearGradient(
                          colors: gradientColors!,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            Text(
              text == null
                  ? '$percentage%'
                  : '$text $percentage%',
              style: TextStyle(
                color: textColor,
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../utils/progress_utils.dart';

class CustomCircularProgress extends StatelessWidget {
  final double value;
  final double size;
  final double strokeWidth;
  final Color progressColor;
  final Color backgroundColor;
  final bool showPercentage;
  final TextStyle? textStyle;

  const CustomCircularProgress({
    super.key,
    required this.value,
    this.size = 100,
    this.strokeWidth = 10,
    this.progressColor = Colors.blue,
    this.backgroundColor = Colors.grey,
    this.showPercentage = true,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    final progress = clampProgress(value);
    final percentage = progressPercentage(value);

    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircularProgressIndicator(
            value: progress,
            strokeWidth: strokeWidth,
            backgroundColor: backgroundColor,
            valueColor: AlwaysStoppedAnimation<Color>(
              progressColor,
            ),
          ),
          if (showPercentage)
            Text(
              '$percentage%',
              style: textStyle ??
                  const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
            ),
        ],
      ),
    );
  }
}
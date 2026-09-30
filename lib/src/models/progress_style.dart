import 'package:flutter/material.dart';

class ProgressStyle {
  final Color progressColor;
  final Color backgroundColor;
  final double height;
  final double borderRadius;

  const ProgressStyle({
    this.progressColor = Colors.blue,
    this.backgroundColor = Colors.grey,
    this.height = 10,
    this.borderRadius = 10,
  });
}
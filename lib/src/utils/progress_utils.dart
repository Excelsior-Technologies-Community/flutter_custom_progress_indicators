double clampProgress(double value) {
  return value.clamp(0.0, 1.0);
}

int progressPercentage(double value) {
  return (clampProgress(value) * 100).round();
}
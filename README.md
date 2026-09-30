# Custom Progress Indicators

A lightweight and customizable Flutter package for beautiful **animated linear, circular, gradient, and percentage progress indicators**.

Build modern progress UI with smooth animations, customizable colors, gradients, sizes, text overlays, and percentage indicators — with minimal code.

---

<div align="center">

<img src="assets/progress_indicators.gif" width="150" alt="Custom Progress Indicators Demo">

<br><br>

<a href="https://pub.dev">
  <img src="https://img.shields.io/badge/pub.dev-coming%20soon-blue?logo=dart" alt="pub.dev">
</a>
<a href="https://github.com">
  <img src="https://img.shields.io/badge/Flutter-3.41.9-blue?logo=flutter" alt="Flutter">
</a>
<a href="https://github.com">
  <img src="https://img.shields.io/badge/Dart-3.11.5-blue?logo=dart" alt="Dart">
</a>
<a href="LICENSE">
  <img src="https://img.shields.io/badge/license-MIT-green" alt="License">
</a>

</div>

---

## ✨ Features

* 🚀 Smooth animated linear progress
* 🔵 Custom circular progress indicator
* 🌈 Gradient linear progress
* 📊 Text and percentage overlay
* 🎨 Fully customizable colors
* 🌈 Multiple gradient colors
* 📐 Custom height and size
* 🔄 Configurable animation duration
* 📝 Custom percentage text
* 📱 Responsive Flutter widgets
* 🧩 Simple reusable components
* 🪶 Lightweight and easy to integrate
* ✅ Null-safe
* 🧪 Widget and utility tests included

---

## 📦 Installation

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_custom_progress_indicators:
    path: ../
```

For a published package, use:

```yaml
dependencies:
  flutter_custom_progress_indicators: ^1.0.0
```

Then run:

```bash
flutter pub get
```

---

## 🚀 Import

Import the package into your Flutter project:

```dart
import 'package:flutter_custom_progress_indicators/flutter_custom_progress_indicators.dart';
```
## 🎬 Demo

<p align="center">
  <img
    src="./assets/progress_indicators.gif"
    width="200"
    alt="Custom Progress Indicators Demo"
  />
</p>

### Demo Includes

* 🔵 Animated Linear Progress
* 🟣 Circular Progress Indicator
* 🌈 Gradient Linear Progress
* 📊 Text + Percentage Overlay
* 🎚️ Interactive Progress Slider
* ⚡ Smooth Progress Animations
* 🎨 Custom Colors and Gradients



---

# 📊 Available Widgets

| Widget                   | Description                                   |
| ------------------------ | --------------------------------------------- |
| `AnimatedLinearProgress` | Animated linear progress bar                  |
| `CustomCircularProgress` | Circular progress with percentage             |
| `GradientLinearProgress` | Animated gradient progress bar                |
| `PercentageProgress`     | Progress bar with text and percentage overlay |

---

# 1. 🔹 Animated Linear Progress

A smooth animated linear progress indicator with customizable colors, height, border radius, and animation duration.

### Example

```dart
AnimatedLinearProgress(
  value: 0.65,
  height: 12,
  progressColor: Colors.blue,
  backgroundColor: Colors.grey.shade300,
)
```

### Parameters

| Parameter         | Type           | Default       | Description                        |
| ----------------- | -------------- | ------------- | ---------------------------------- |
| `value`           | `double`       | Required      | Progress value from `0.0` to `1.0` |
| `height`          | `double`       | `10`          | Progress bar height                |
| `progressColor`   | `Color`        | `Colors.blue` | Progress color                     |
| `backgroundColor` | `Color`        | `Colors.grey` | Background color                   |
| `duration`        | `Duration`     | `800ms`       | Animation duration                 |
| `borderRadius`    | `BorderRadius` | `10`          | Progress corner radius             |

---

# 2. 🔵 Circular Progress

A customizable circular progress indicator with an optional percentage displayed in the center.

### Example

```dart
CustomCircularProgress(
  value: 0.75,
  size: 120,
  strokeWidth: 10,
  progressColor: Colors.blue,
  backgroundColor: Colors.grey,
)
```

### Parameters

| Parameter         | Type         | Default       | Description                        |
| ----------------- | ------------ | ------------- | ---------------------------------- |
| `value`           | `double`     | Required      | Progress value from `0.0` to `1.0` |
| `size`            | `double`     | `100`         | Circular indicator size            |
| `strokeWidth`     | `double`     | `10`          | Circular stroke width              |
| `progressColor`   | `Color`      | `Colors.blue` | Progress color                     |
| `backgroundColor` | `Color`      | `Colors.grey` | Background color                   |
| `showPercentage`  | `bool`       | `true`        | Shows percentage text              |
| `textStyle`       | `TextStyle?` | `null`        | Custom percentage text style       |

---

# 3. 🌈 Gradient Linear Progress

Create animated progress bars using multiple gradient colors.

### Example

```dart
GradientLinearProgress(
  value: 0.80,
  height: 14,
  colors: [
    Colors.blue,
    Colors.purple,
    Colors.pink,
  ],
  backgroundColor: Colors.grey,
)
```

### Parameters

| Parameter         | Type           | Default       | Description                        |
| ----------------- | -------------- | ------------- | ---------------------------------- |
| `value`           | `double`       | Required      | Progress value from `0.0` to `1.0` |
| `height`          | `double`       | `12`          | Progress bar height                |
| `colors`          | `List<Color>`  | Blue → Purple | Gradient colors                    |
| `backgroundColor` | `Color`        | `Colors.grey` | Background color                   |
| `borderRadius`    | `BorderRadius` | `10`          | Corner radius                      |
| `duration`        | `Duration`     | `800ms`       | Animation duration                 |

---

# 4. 📊 Text + Percentage Overlay

Display custom text together with the current percentage directly inside the progress bar.

### Example

```dart
PercentageProgress(
  value: 0.65,
  height: 35,
  text: 'Loading',
  gradientColors: [
    Colors.deepPurple,
    Colors.blue,
  ],
  backgroundColor: Colors.grey,
)
```

Output concept:

```text
┌──────────────────────────────┐
│        Loading 65%           │
└──────────────────────────────┘
```

### Without Custom Text

```dart
PercentageProgress(
  value: 0.90,
  progressColor: Colors.green,
)
```

Displays:

```text
90%
```

### Parameters

| Parameter         | Type           | Default        | Description                        |
| ----------------- | -------------- | -------------- | ---------------------------------- |
| `value`           | `double`       | Required       | Progress value from `0.0` to `1.0` |
| `height`          | `double`       | `30`           | Progress bar height                |
| `text`            | `String?`      | `null`         | Custom text before percentage      |
| `gradientColors`  | `List<Color>?` | `null`         | Optional gradient colors           |
| `progressColor`   | `Color`        | `Colors.blue`  | Progress color                     |
| `backgroundColor` | `Color`        | `Colors.grey`  | Background color                   |
| `textColor`       | `Color`        | `Colors.white` | Text color                         |
| `fontSize`        | `double`       | `14`           | Percentage font size               |
| `borderRadius`    | `BorderRadius` | `10`           | Corner radius                      |
| `duration`        | `Duration`     | `800ms`        | Animation duration                 |

---

# 🎨 Customization

All progress widgets are designed to be easily customized.

### Change progress value

```dart
AnimatedLinearProgress(
  value: 0.25,
)
```

```dart
AnimatedLinearProgress(
  value: 0.50,
)
```

```dart
AnimatedLinearProgress(
  value: 0.75,
)
```

```dart
AnimatedLinearProgress(
  value: 1.0,
)
```

The package automatically clamps values between `0.0` and `1.0`.

---

# 🌈 Gradient Example

```dart
GradientLinearProgress(
  value: 0.70,
  colors: [
    Colors.cyan,
    Colors.blue,
    Colors.purple,
  ],
)
```

You can provide two or more colors:

```dart
colors: [
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.red,
]
```

---

# 🔄 Animation

Progress animations are automatically handled by the widgets.

You can customize the animation duration:

```dart
AnimatedLinearProgress(
  value: 0.80,
  duration: const Duration(
    milliseconds: 1500,
  ),
)
```

---

# 🎯 Dynamic Progress

The progress value can be connected to a state variable.

```dart
double progress = 0.50;
```

Update it using a slider:

```dart
Slider(
  value: progress,
  min: 0,
  max: 1,
  onChanged: (value) {
    setState(() {
      progress = value;
    });
  },
)
```

Then:

```dart
AnimatedLinearProgress(
  value: progress,
)
```

---

# 📱 Complete Example

```dart
import 'package:flutter/material.dart';
import 'package:flutter_custom_progress_indicators/flutter_custom_progress_indicators.dart';

class ProgressExample extends StatelessWidget {
  const ProgressExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            AnimatedLinearProgress(
              value: 0.65,
            ),

            const SizedBox(height: 30),

            CustomCircularProgress(
              value: 0.75,
            ),

            const SizedBox(height: 30),

            GradientLinearProgress(
              value: 0.80,
              colors: [
                Colors.blue,
                Colors.purple,
              ],
            ),

            const SizedBox(height: 30),

            PercentageProgress(
              value: 0.90,
              text: 'Loading',
              gradientColors: [
                Colors.deepPurple,
                Colors.blue,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
```

---

# 📂 Project Structure

```text
flutter_custom_progress_indicators/
│
├── example/
│   ├── android/
│   ├── ios/
│   ├── lib/
│   │   └── main.dart
│   ├── test/
│   │   └── widget_test.dart
│   └── pubspec.yaml
│
├── lib/
│   ├── flutter_custom_progress_indicators.dart
│   │
│   └── src/
│       ├── models/
│       │   └── progress_style.dart
│       │
│       ├── utils/
│       │   └── progress_utils.dart
│       │
│       └── widgets/
│           ├── animated_linear_progress.dart
│           ├── circular_progress.dart
│           ├── gradient_linear_progress.dart
│           └── percentage_progress.dart
│
├── test/
│   └── progress_indicators_test.dart
│
├── assets/
│   └── demo.gif
│
├── README.md
├── CHANGELOG.md
├── LICENSE
├── analysis_options.yaml
└── pubspec.yaml
```

---

# 🧪 Testing

Run package tests:

```bash
flutter test
```

Run static analysis:

```bash
flutter analyze
```

Run the example application:

```bash
cd example
flutter run
```

Run the example on Chrome:

```bash
flutter run -d chrome
```

---

# 💡 Value Format

The `value` parameter uses a range from `0.0` to `1.0`.

|  Value | Percentage |
| -----: | ---------: |
|  `0.0` |         0% |
| `0.25` |        25% |
| `0.50` |        50% |
| `0.75` |        75% |
|  `1.0` |       100% |

Values outside this range are automatically clamped.

---

# 📋 Requirements

* Flutter `3.41.9` or compatible
* Dart `3.11.5` or compatible
* Null safety enabled

---

# 🤝 Contributing

Contributions, issues, and feature requests are welcome.

### Development workflow

```bash
git clone <repository-url>
```

```bash
cd flutter_custom_progress_indicators
```

Get dependencies:

```bash
flutter pub get
```

Run analysis:

```bash
flutter analyze
```

Run tests:

```bash
flutter test
```

Run example:

```bash
cd example
flutter run
```

Create a feature branch:

```bash
git checkout -b feature/your-feature
```

Commit your changes:

```bash
git add .
git commit -m "Add your feature"
```

Push your branch:

```bash
git push origin feature/your-feature
```

Then open a pull request.

---

# 📄 License

This project is licensed under the MIT License.

MIT License
 
Copyright (c) 2026 Excelsior Technologies
 
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
 
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
 
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE. 

---

# ⭐ Support

If this package is useful to you, consider giving the repository a ⭐ on GitHub.

---

<div align="center">

### Custom Progress Indicators

**Simple • Animated • Customizable • Flutter Ready**

Made with ❤️ for Flutter developers.

</div>

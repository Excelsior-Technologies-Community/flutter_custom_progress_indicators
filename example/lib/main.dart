import 'package:flutter/material.dart';
import 'package:flutter_custom_progress_indicators/flutter_custom_progress_indicators.dart';

void main() {
  runApp(const ProgressDemoApp());
}

class ProgressDemoApp extends StatelessWidget {
  const ProgressDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Progress Indicators',
      theme: ThemeData.dark(),
      home: const ProgressDemoScreen(),
    );
  }
}

class ProgressDemoScreen extends StatefulWidget {
  const ProgressDemoScreen({super.key});

  @override
  State<ProgressDemoScreen> createState() => _ProgressDemoScreenState();
}

class _ProgressDemoScreenState extends State<ProgressDemoScreen> {
  double progress = 0.65;

  @override
  Widget build(BuildContext context) {
    final percentage = (progress * 100).round();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Custom Progress Indicators',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Progress Demo',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Animated, circular, gradient and percentage progress indicators.',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 30),

            _sectionTitle('Current Progress'),
            const SizedBox(height: 10),

            Text(
              '$percentage%',
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            Slider(
              value: progress,
              min: 0,
              max: 1,
              divisions: 100,
              onChanged: (value) {
                setState(() {
                  progress = value;
                });
              },
            ),

            const SizedBox(height: 20),

            _sectionTitle('Animated Linear Progress'),
            const SizedBox(height: 15),

            AnimatedLinearProgress(
              value: progress,
              height: 14,
              progressColor: Colors.blue,
              backgroundColor: Colors.white12,
            ),

            const SizedBox(height: 35),

            _sectionTitle('Circular Progress'),
            const SizedBox(height: 20),

            Center(
              child: CustomCircularProgress(
                value: progress,
                size: 150,
                strokeWidth: 12,
                progressColor: Colors.blue,
                backgroundColor: Colors.white12,
                showPercentage: true,
              ),
            ),

            const SizedBox(height: 35),

            _sectionTitle('Gradient Linear Progress'),
            const SizedBox(height: 15),

            GradientLinearProgress(
              value: progress,
              height: 16,
              colors: const [
                Colors.blue,
                Colors.purple,
                Colors.pink,
              ],
              backgroundColor: Colors.white12,
            ),

            const SizedBox(height: 35),

            _sectionTitle('Text + Percentage Overlay'),
            const SizedBox(height: 15),

            PercentageProgress(
              value: progress,
              height: 35,
              text: 'Loading',
              gradientColors: const [
                Colors.deepPurple,
                Colors.blue,
              ],
              backgroundColor: Colors.white12,
            ),

            const SizedBox(height: 35),

            _sectionTitle('Simple Percentage'),
            const SizedBox(height: 15),

            PercentageProgress(
              value: progress,
              height: 30,
              progressColor: Colors.green,
              backgroundColor: Colors.white12,
            ),

            const SizedBox(height: 35),

            Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    progress = 0.0;
                  });

                  Future.delayed(
                    const Duration(milliseconds: 300),
                        () {
                      if (!mounted) {
                        return;
                      }

                      setState(() {
                        progress = 1.0;
                      });
                    },
                  );
                },
                child: const Text('Run Animation'),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
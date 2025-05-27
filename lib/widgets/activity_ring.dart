import 'package:flutter/material.dart';

class ActivityRing extends StatelessWidget {
  final double percentage;
  final int steps;
  final double distance;
  final int calories;

  ActivityRing({required this.percentage, required this.steps, required this.distance, required this.calories});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircularProgressIndicator(value: percentage, strokeWidth: 8),
        SizedBox(height: 10),
        Text('$steps Steps • ${distance.toStringAsFixed(1)} km • $calories cal'),
      ],
    );
  }
}


import 'package:flutter/material.dart';

class CycleGameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cycle Quest")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.pedal_bike, size: 80, color: Colors.green),
            SizedBox(height: 20),
            Text("Cycle 2 km to win your badge!"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Show earned badge
              },
              child: Text("Complete Challenge"),
            ),
          ],
        ),
      ),
    );
  }
}

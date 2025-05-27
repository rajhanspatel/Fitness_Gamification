import 'package:flutter/material.dart';

class RunGameScreen extends StatelessWidget {
  const RunGameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Running Adventure")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.directions_run, size: 80, color: Colors.blue),
            SizedBox(height: 20),
            Text("Run 1 km to unlock your badge!", style: TextStyle(fontSize: 18)),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Simulate challenge completion
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text("🎉 Congratulations!"),
                    content: Text("You've unlocked the 'Running Rookie' badge."),
                    actions: [
                      TextButton(
                        child: Text("Share"),
                        onPressed: () {
                          Navigator.pop(context);
                          // Implement share logic
                        },
                      ),
                      TextButton(
                        child: Text("Close"),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                );
              },
              child: Text("Complete Challenge"),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class YogaGameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Yoga Flow")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.self_improvement, size: 80, color: Colors.purple),
            SizedBox(height: 20),
            Text("Complete a 10-min yoga session."),
            ElevatedButton(
              onPressed: () {
                // Badge unlock logic
              },
              child: Text("Mark as Done"),
            ),
          ],
        ),
      ),
    );
  }
}

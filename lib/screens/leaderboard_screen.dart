import 'package:flutter/material.dart';

class LeaderboardScreen extends StatelessWidget {
  final List<Map<String, dynamic>> users = [
    {'name': 'Yash', 'title': 'High Streak Time Scorer'},
    {'name': 'Shanaya', 'title': 'Challenge Master'},
    {'name': 'Ayan', 'title': 'Social Butterfly'},
    {'name': 'Rohit', 'title': 'Cardio Beast'},
    {'name': 'Priya', 'title': 'First Timer'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Leaderboard')),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: CircleAvatar(child: Text(user['name'][0])),
              title: Text(user['name']),
              subtitle: Text(user['title']),
              trailing: Icon(Icons.star, color: Colors.amber),
            ),
          );
        },
      ),
    );
  }
}

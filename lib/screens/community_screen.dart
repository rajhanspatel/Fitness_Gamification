import 'package:flutter/material.dart';
import '../widgets/bottom_nav.dart';


class CommunityScreen extends StatefulWidget {
  @override
  _CommunityScreenState createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  bool showLeaderboard = true;

  final List<Map<String, dynamic>> leaderboardData = [
    {
      'name': 'Yash',
      'days': '5 day streak',
      'title': 'Top Scorer',
      'rank': 1,
      'avatar': '🐻‍❄️',
    },
    {
      'name': 'Sharavan',
      'days': '3 day streak',
      'title': 'Challenge Master',
      'rank': 2,
      'avatar': '🐼',
    },
    {
      'name': 'Ayesha',
      'days': '2 day streak',
      'title': 'Scocsil Butterfly',
      'rank': 3,
      'avatar': '🐰',
    },
    {
      'name': 'Rahul',
      'days': '1 day streak',
      'title': 'Newcomer',
      'rank': 4,
      'avatar': '🐧',
    },
    {
      'name': 'Priya',
      'days': 'Newbie',
      'title': 'First Timer',
      'rank': 5,
      'avatar': '🦄',
    },
  ];

  final List<Map<String, dynamic>> communityPosts = [
    {
      'name': 'Aayush',
      'action': 'unlocked 5k run badge!',
      'avatar': Icons.directions_run,
      'days': '5 day streak',
      'tag': 'Fitness Champ',
    },
    {
      'name': 'Neha',
      'action': 'shared her yoga streak!',
      'avatar': Icons.self_improvement,
      'days': '4 day streak',
      'tag': 'Yoga Lover',
    },
    {
      'name': 'Anaya',
      'action': 'posted her HIIT workout summary.',
      'avatar': Icons.fitness_center,
      'days': '3 day streak',
      'tag': 'HIIT Hero',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8FAFB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'Leaderboard & Community',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Color(0xFFEFF3F7),
              borderRadius: BorderRadius.circular(32),
            ),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => showLeaderboard = true),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: showLeaderboard ? Color(0xFF4F92F7) : Colors.transparent,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Center(
                        child: Text(
                          'Leaderboard',
                          style: TextStyle(
                            color: showLeaderboard ? Colors.white : Colors.black54,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => showLeaderboard = false),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: !showLeaderboard ? Color(0xFF4F92F7) : Colors.transparent,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Center(
                        child: Text(
                          'Community',
                          style: TextStyle(
                            color: !showLeaderboard ? Colors.white : Colors.black54,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Expanded(
            child: showLeaderboard
                ? ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16),
              itemCount: leaderboardData.length,
              itemBuilder: (context, index) {
                final item = leaderboardData[index];
                return Container(
                  margin: EdgeInsets.only(bottom: 12),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.blue[100],
                        child: Text(
                          '${item['rank']}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      CircleAvatar(
                        backgroundColor: Colors.grey.shade200,
                        child: Text(item['avatar']),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item['name'],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '${item['days']} • ${item['title']}',
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Icon(Icons.star, color: Colors.amber),
                          Text('1125 pts'),
                        ],
                      )
                    ],
                  ),
                );
              },
            )
                : ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16),
              itemCount: communityPosts.length,
              itemBuilder: (context, index) {
                final post = communityPosts[index];
                return Container(
                  margin: EdgeInsets.only(bottom: 12),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.blue[100],
                        child: Icon(post['avatar'], color: Colors.blue[800]),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text.rich(
                              TextSpan(
                                text: post['name'],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                                children: [
                                  TextSpan(
                                    text: ' ${post['action']}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              '${post['days']} • ${post['tag']}',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(Icons.share, color: Colors.grey),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

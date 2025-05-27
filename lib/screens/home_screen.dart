import 'package:fitquest/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../widgets/activity_ring.dart';
import '../widgets/bottom_nav.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('EEE, d MMM').format(DateTime.now());

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- Top Row: Logo and Profile ---
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "FitJourney",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(Icons.notifications_none, color: Colors.black87),
                      SizedBox(width: 12),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen(),));
                        },
                        borderRadius: BorderRadius.circular(20),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.grey.shade300,
                          child: Icon(Icons.person, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 16),

              // --- Today Title and Date ---
              Center(
                child: Column(
                  children: [
                    Text("Today", style: TextStyle(color: Colors.grey)),
                    Text(
                      formattedDate,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16),

              // --- Activity Ring ---
              Center(
                child: ActivityRing(
                  percentage: 0.75,
                  steps: 5121,
                  calories: 1150,
                  distance: 1.2,
                ),
              ),

              SizedBox(height: 24),

              // --- Stats (Steps, Km, Cals) ---
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildStat(Icons.directions_walk, "5121", "Steps"),
                  _buildStat(Icons.map, "1.2", "Km"),
                  _buildStat(Icons.local_fire_department, "1,150", "Cals"),
                ],
              ),

              SizedBox(height: 24),

              // --- Daily Goals Card ---
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF3B6BA5),
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Daily Goals", style: TextStyle(color: Colors.white, fontSize: 16)),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: "MTWTFSS".split('').map((day) {
                        bool isToday = day == DateFormat('E').format(DateTime.now()).substring(0, 1);
                        return CircleAvatar(
                          radius: 14,
                          backgroundColor: isToday ? Colors.white : Colors.transparent,
                          child: Text(
                            day,
                            style: TextStyle(
                              color: isToday ? Color(0xFF3B6BA5) : Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _goalItem(Icons.local_fire_department, "600kcal", "Base goal"),
                        _goalItem(Icons.fitness_center, "2 hr", "Exercise"),
                        _goalItem(Icons.restaurant, "80g", "Food"),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStat(IconData icon, String value, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 22,
          backgroundColor: Colors.grey.shade200,
          child: Icon(icon, color: Color(0xFF3B6BA5)),
        ),
        SizedBox(height: 6),
        Text(value, style: TextStyle(fontWeight: FontWeight.bold)),
        Text(label, style: TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    );
  }

  Widget _goalItem(IconData icon, String value, String label) {
    return Column(
      children: [
        Icon(icon, color: Colors.white),
        SizedBox(height: 4),
        Text(value, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        Text(label, style: TextStyle(color: Colors.white70, fontSize: 12)),
      ],
    );
  }
}

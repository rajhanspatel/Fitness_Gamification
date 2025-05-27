import 'package:flutter/material.dart';
import '../screens/splash_screen.dart';
import '../screens/login_screen.dart';
import '../screens/signup_screen.dart';
import '../screens/home_screen.dart';
import '../screens/trainer.dart';
import '../screens/run_game_screen.dart';
import '../screens/diet_screen.dart';
import '../screens/leaderboard_screen.dart';
import '../screens/community_screen.dart';
import '../screens/profile_screen.dart';

final appRoutes = {
  '/': (context) => SplashScreen(),
  '/login': (context) => LoginScreen(),
  '/signup': (context) => SignUpScreen(),
  '/home': (context) => HomeScreen(),
  '/run': (context) => RunGameScreen(),
  '/trainer': (context) => TrainerScreen(),
  '/diet': (context) => DietScreen(),
  '/leaderboard': (context) => LeaderboardScreen(),
  '/community': (context) => CommunityScreen(),
  '/profile':(context) => ProfileScreen(),
};

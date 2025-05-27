import 'package:flutter/material.dart';
import 'meal_model.dart';

class MealDetailScreen extends StatelessWidget {
  final String title;
  final List<Meal> meals;

  const MealDetailScreen({super.key, required this.title, required this.meals});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: meals.length,
        itemBuilder: (context, index) {
          final meal = meals[index];
          final isBlueCard = index % 2 == 1;

          return Container(
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              color: isBlueCard ? Colors.blue[600] : Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 4)],
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  meal.title,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
                ),
                const SizedBox(height: 4),
                Text(meal.time, style: const TextStyle(color: Colors.grey, fontSize: 12)),
                const SizedBox(height: 10),
                ...meal.items.map(
                      (e) => Text(
                    '• $e',
                    style: TextStyle(color: isBlueCard ? Colors.white : Colors.black),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  decoration: BoxDecoration(
                    color: isBlueCard ? Colors.white : Colors.blue[600],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    '${meal.calories} Calories • ${meal.protein}g Protein',
                    style: TextStyle(
                      color: isBlueCard ? Colors.blue[600] : Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

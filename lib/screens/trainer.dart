import 'package:flutter/material.dart';
import '../widgets/bottom_nav.dart';
import 'workout_detail_screen.dart';

// Model class for Workout
class Workout {
  final String name;
  final String sets;
  final String reps;
  final String videoUrl;
  final String details;

  const Workout({
    required this.name,
    required this.sets,
    required this.reps,
    required this.videoUrl,
    this.details = '',
  });
}

class TrainerScreen extends StatelessWidget {
  const TrainerScreen({super.key});

  final List<Workout> workouts = const [
    Workout(
      name: 'Treadmill',
      sets: '3 sets',
      reps: '10 mins',
      videoUrl: 'https://youtu.be/ufhM_9eLU-s?si=5IVVT5unqLo2OCEa',
      details: '''
🕒 Duration: 45 min
🔥 Calories: 300 – 600 kcal
🦵 Focus: Legs, Butt, Lower back
❤️ Benefits: Burn calories, improve heart health, and boost endurance

🔹 Preparation:
- Wear comfortable workout clothes and cushioned, non-slip shoes.
- Keep a water bottle nearby to stay hydrated.
- Set up your treadmill, music, and workout plan in advance.
- Beginners should start slow and increase time gradually.

🔹 Why use?
✓ Helps with weight loss
✓ Improves heart health
✓ Customizable workouts
✓ Low impact on joints
✓ Tracks progress and stats

🔹 Execution:
1. Start by walking slowly (3–4 km/h) for 3–5 minutes to warm up.
2. Increase speed to a comfortable pace — walk, jog, or run — and maintain it steadily.
3. Gradually slow down over 3–5 minutes until you stop.

🔹 Key Tips:
- Stand tall and keep posture upright.
- Look straight ahead, not at your feet.
- Swing arms naturally to maintain balance.
- Avoid holding handles unless needed.
- Use safety clip in emergencies.
- Stay hydrated.
- Stop if dizzy or in pain.
''',
    ),
    Workout(
      name: 'Dumbbells',
      sets: '4 sets',
      reps: '12 reps',
      videoUrl: 'https://youtu.be/n8mK8xEifTg?si=kzKZVhsiYsRVwDjK',
      details: '''
🕒 Duration: 30–45 min
🔥 Calories: 200 – 400 kcal
💪 Focus: Arms, Chest, Shoulders, Core
❤️ Benefits: Build strength, improve muscle tone, and support bone health

🔹 Preparation:
- Choose dumbbell weights appropriate for your fitness level.
- Warm up your joints and muscles with light cardio or mobility work.
- Keep water and a towel nearby.
- Use a mirror if possible to monitor form.

🔹 Why use?
✓ Versatile for full-body workouts
✓ Improves balance and coordination
✓ Strengthens muscles and bones
✓ Easy to adjust intensity
✓ Ideal for home workouts

🔹 Execution:
1. Select an exercise (e.g., bicep curl, shoulder press, squat).
2. Hold dumbbells with proper grip and posture.
3. Perform controlled movements with correct form.
4. Rest 30–60 seconds between sets.

🔹 Key Tips:
- Don’t swing the weights — controlled motion is key.
- Engage your core for better balance.
- Breathe out during exertion, inhale on return.
- Avoid locking joints completely.
- Focus on quality over quantity.
''',
    ),
    Workout(
      name: 'Leg Press Machine',
      sets: '3 sets',
      reps: '10 reps',
      videoUrl: 'https://youtu.be/MxLuBts-0d0?si=4Cbds0-aCaMnVFCO',
      details: '''
🕒 Duration: 30 min
🔥 Calories: 250 – 450 kcal
🦵 Focus: Quads, Hamstrings, Glutes
❤️ Benefits: Builds lower body strength, safe alternative to squats

🔹 Preparation:
- Adjust the seat and foot platform according to your leg length.
- Warm up with light cardio or bodyweight squats.
- Start with light weight and increase gradually.
- Keep your back flat and core engaged.

🔹 Why use?
✓ Isolates leg muscles
✓ Reduces spine load
✓ Safe for beginners
✓ Improves lower-body strength
✓ Helps build muscle mass

🔹 Execution:
1. Sit on the machine and place feet shoulder-width apart on the platform.
2. Push the platform by extending legs fully, without locking knees.
3. Lower the weight slowly until knees form a 90° angle.
4. Repeat controlled reps.

🔹 Key Tips:
- Keep heels flat and avoid lifting them.
- Avoid locking knees at the top.
- Use full range of motion.
- Keep your knees aligned with your feet.
- Don’t rush — controlled reps prevent injury.
''',
    ),
    Workout(
      name: 'Rowing Machine',
      sets: '3 sets',
      reps: '15 mins',
      videoUrl: 'https://youtu.be/vecV6iYOj2Q?si=hd3AuNt0McFh72lq',
      details: '''
🕒 Duration: 30–45 min
🔥 Calories: 400 – 600 kcal
💪 Focus: Full Body — Back, Arms, Legs, Core
❤️ Benefits: Improves endurance, burns calories, strengthens muscles

🔹 Preparation:
- Adjust foot straps snugly.
- Set the resistance level based on your fitness.
- Warm up with light rowing.
- Sit tall with shoulders relaxed and back straight.

🔹 Why use?
✓ Full-body cardio
✓ Low-impact on joints
✓ Boosts stamina and strength
✓ Engages multiple muscle groups
✓ Great for fat burning

🔹 Execution:
1. Start with the "catch" position — knees bent, arms straight, back flat.
2. Push back with legs, then pull handle to chest.
3. Reverse the motion smoothly to return.
4. Maintain a steady rhythm and posture.

🔹 Key Tips:
- Drive with your legs, not arms.
- Keep core tight throughout.
- Don’t hunch shoulders or round the back.
- Focus on smooth, rhythmic strokes.
- Monitor your pace and adjust intensity.
''',
    ),
    Workout(
      name: 'Cable Crossover',
      sets: '4 sets',
      reps: '12 reps',
      videoUrl: 'https://youtu.be/BVZOjC11L28?si=Dusc7OLjiti6u1XT',
      details: '''
🕒 Duration: 20–30 min
🔥 Calories: 150 – 300 kcal
💪 Focus: Chest, Shoulders, Arms
❤️ Benefits: Defines chest muscles, improves muscle symmetry

🔹 Preparation:
- Adjust cable pulleys slightly above shoulder level.
- Choose a manageable weight to maintain form.
- Stand with one foot forward for stability.
- Warm up shoulders and chest.

🔹 Why use?
✓ Isolates chest muscles effectively
✓ Helps with muscle balance
✓ Allows controlled range of motion
✓ Adds variety to chest workouts
✓ Good for hypertrophy

🔹 Execution:
1. Grip handles, step forward, and lean slightly ahead.
2. Bring arms together in front of you with slight elbow bend.
3. Slowly return to start — feel the stretch in chest.
4. Repeat with smooth motion.

🔹 Key Tips:
- Keep elbows slightly bent throughout.
- Don’t let handles touch forcefully.
- Maintain posture and tight core.
- Focus on mind-muscle connection.
- Adjust angle to hit different chest areas.
''',
    ),
    Workout(
      name: 'Pull-up Bar',
      sets: '3 sets',
      reps: '8 reps',
      videoUrl: 'https://youtu.be/zuuercx8XOo?si=Cj9i5PyJ_i7cQ-ve',
      details: '''
🕒 Duration: 15–25 min
🔥 Calories: 100 – 250 kcal
💪 Focus: Back, Arms, Core
❤️ Benefits: Builds upper-body strength and grip power

🔹 Preparation:
- Use a stable, high-quality pull-up bar.
- Warm up shoulders and arms.
- Use chalk or gloves for better grip if needed.
- Start with assisted pull-ups if you're a beginner.

🔹 Why use?
✓ Increases upper-body strength
✓ Improves grip and posture
✓ Requires no weights
✓ Strengthens lats and arms
✓ Enhances core stability

🔹 Execution:
1. Grab bar with overhand grip, shoulder-width apart.
2. Hang fully with arms extended.
3. Pull chin above the bar using back and arm muscles.
4. Lower yourself slowly to starting position.

🔹 Key Tips:
- Engage core to avoid swinging.
- Use full range of motion.
- Exhale while pulling up.
- Don’t jerk or bounce.
- Focus on controlled movement.
''',
    ),
    Workout(
      name: 'Cycle Bike Workout',
      sets: '3 sets',
      reps: '15 mins',
      videoUrl: 'https://youtu.be/TY0f2mgR3GI?si=W12O3DeBvzd-e-jB',
      details: '''
🕒 Duration: 30–60 min
🔥 Calories: 300 – 600 kcal
🦵 Focus: Legs, Glutes, Cardiovascular
❤️ Benefits: Improves stamina, burns fat, and tones legs

🔹 Preparation:
- Adjust seat height so your legs extend comfortably.
- Choose a resistance level that challenges you.
- Warm up with 5 mins of slow cycling.
- Keep water nearby.

🔹 Why use?
✓ Low impact on joints
✓ Great for cardio and endurance
✓ Can be used for HIIT or steady-state
✓ Helps with weight loss
✓ Tones leg muscles

🔹 Execution:
1. Start pedaling at a steady pace for warm-up.
2. Increase resistance or speed depending on your workout.
3. Alternate between intervals of high and moderate intensity.
4. Cool down with slower cycling.

🔹 Key Tips:
- Maintain upright posture and relaxed shoulders.
- Don’t lean too far forward.
- Keep knees aligned with pedals.
- Stay hydrated.
- Use a towel for sweat and monitor time.
''',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Personal Trainer'),
        automaticallyImplyLeading: false,),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: workouts.length,
        itemBuilder: (context, index) {
          final workout = workouts[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: const Icon(Icons.fitness_center),
              title: Text(workout.name),
              subtitle: const Text('View sets, reps & video'),
              trailing: const Icon(Icons.play_circle_fill),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WorkoutDetailScreen(workout: workout),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

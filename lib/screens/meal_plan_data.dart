import 'meal_model.dart';

final Map<String, List<Meal>> mealPlanGroups = {
  'Day 1-6: High-Protein Focus': [
    Meal(
      title: 'Breakfast',
      time: '7:00 AM',
      items: ['Scrambled eggs (2 whole + 2 whites)', 'Spinach', 'Whole wheat toast'],
      calories: 300,
      protein: 25,
    ),
    Meal(
      title: 'Snack 1',
      time: '11:00 AM',
      items: ['Cottage cheese (100g)', 'Walnuts (5-6)', 'Sliced apple'],
      calories: 200,
      protein: 15,
    ),
    Meal(
      title: 'Lunch',
      time: '1:30 PM',
      items: ['Grilled turkey breast', 'Brown rice', 'Stir-fried veggies'],
      calories: 450,
      protein: 40,
    ),
    Meal(
      title: 'Snack 2',
      time: '5:00 PM',
      items: ['Roasted chickpeas (1/2 cup)', 'Green tea'],
      calories: 150,
      protein: 8,
    ),
    Meal(
      title: 'Dinner',
      time: '7:30 PM',
      items: ['Tofu curry (100g)', 'Quinoa', 'Steamed asparagus'],
      calories: 400,
      protein: 30,
    ),
  ],
  'Day 7-12: Mediterranean Style': [
    Meal(
      title: 'Breakfast',
      time: '7:00 AM',
      items: [
        'Greek yogurt parfait (yogurt + granola + pomegranate seeds)',
      ],
      calories: 250,
      protein: 20,
    ),
    Meal(
      title: 'Snack 1',
      time: '11:00 AM',
      items: [
        'Hummus (2 tbsp)',
        'Cucumber/carrot sticks',
      ],
      calories: 180,
      protein: 6,
    ),
    Meal(
      title: 'Lunch',
      time: '1:30 PM',
      items: [
        'Grilled fish (salmon/cod)',
        'Couscous',
        'Roasted eggplant',
      ],
      calories: 480,
      protein: 35,
    ),
    Meal(
      title: 'Snack 2',
      time: '5:00 PM',
      items: [
        'Handful of almonds',
        'Orange',
      ],
      calories: 200,
      protein: 7,
    ),
    Meal(
      title: 'Dinner',
      time: '7:30 PM',
      items: [
        'Lentil soup',
        'Whole grain bread',
        'Side salad',
      ],
      calories: 380,
      protein: 25,
    ),
  ],
  'Day 19-24: Low-Carb Focus': [
    Meal(
      title: 'Breakfast',
      time: '7:00 AM',
      items: ['Avocado', 'Poached eggs (2)', 'Sautéed mushrooms'],
      calories: 320,
      protein: 18,
    ),
    Meal(
      title: 'Snack 1',
      time: '11:00 AM',
      items: ['Cheese cubes (30g)', 'Olives (5-6)'],
      calories: 150,
      protein: 10,
    ),
    Meal(
      title: 'Lunch',
      time: '1:30 PM',
      items: ['Grilled chicken', 'Cauliflower rice', 'Garlic butter green beans'],
      calories: 400,
      protein: 38,
    ),
    Meal(
      title: 'Snack 2',
      time: '5:00 PM',
      items: ['Celery sticks', 'Peanut butter (1 tbsp)'],
      calories: 100,
      protein: 4,
    ),
    Meal(
      title: 'Dinner',
      time: '7:30 PM',
      items: ['Zucchini noodles', 'Shrimp (100g)', 'Pesto sauce'],
      calories: 350,
      protein: 30,
    ),
  ],
  'Day 25-31: Balanced Mix': [
    Meal(
      title: 'Breakfast',
      time: '7:00 AM',
      items: ['Poha (flattened rice)', 'Peanuts', 'Turmeric'],
      calories: 280,
      protein: 12,
    ),
    Meal(
      title: 'Snack 1',
      time: '11:00 AM',
      items: ['Boiled corn (1 small cup)', 'Lemon pepper'],
      calories: 120,
      protein: 4,
    ),
    Meal(
      title: 'Lunch',
      time: '1:30 PM',
      items: ['Grilled paneer (100g)', 'Jeera rice', 'Cucumber raita'],
      calories: 440,
      protein: 22,
    ),
    Meal(
      title: 'Snack 2',
      time: '5:00 PM',
      items: ['Dark chocolate (1 square, 85%)', 'Herbal tea'],
      calories: 80,
      protein: 2,
    ),
    Meal(
      title: 'Dinner',
      time: '7:30 PM',
      items: ['Mushroom stir-fry', 'Brown rice', 'Sesame seeds'],
      calories: 380,
      protein: 15,
    ),
  ],


};

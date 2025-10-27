import 'package:flutter/material.dart';
import 'package:habit_app/models/habit.dart';

class HabitProvider extends ChangeNotifier {
  final List<Habit> habits = [
    Habit(
      name: 'Drink Water',
      description: 'Drink at least 8 glasses of water',
      isCompletedToday: false,
      streak: 3,
      lastCompletedAt: DateTime.now(),
    ),
    Habit(
      name: 'Morning Walk',
      description: 'Go for a 30-minute walk',
      isCompletedToday: true,
      streak: 7,
      lastCompletedAt: DateTime.now(),
    ),
  ];

  void addHabit(Habit habit) {
    habits.add(habit);
    notifyListeners();
  }

  void resetHabit() {
    for (Habit habit in habits) {
      if (habit.isCompletedToday) {
        habit.streak++;
      }
      habit.isCompletedToday = false;
    }
    notifyListeners();
  }

  double get progress {
    if (habits.isEmpty) return 0;
    int completed = habits.where((h) => h.isCompletedToday).length;
    return completed / habits.length;
  }

  int get done {
    if (habits.isEmpty) return 0;
    int com = habits.where((m) => m.isCompletedToday).length;
    return com;
  }
}

import 'package:flutter/material.dart';
import 'package:habit_app/models/habit.dart';

class HabitViewer extends StatelessWidget {
  const HabitViewer({super.key, required this.habit});

  final Habit habit;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Column(children: [Text(habit.name), Text(habit.description)]),
        ],
      ),
    );
  }
}

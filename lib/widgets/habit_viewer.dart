import 'package:flutter/material.dart';
import 'package:habit_app/habit_provider.dart';
import 'package:habit_app/models/habit.dart';
import 'package:provider/provider.dart';

class HabitViewer extends StatelessWidget {
  const HabitViewer({super.key, required this.habit});

  final Habit habit;

  @override
  Widget build(BuildContext context) {
    return Consumer<HabitProvider>(
      builder: (context, value, child) => Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: CheckboxListTile(
            value: habit.isCompletedToday,
            onChanged: (val) {
              value.update(habit, val!);
            },
            title: Text(
              habit.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              habit.description,
              style: TextStyle(fontWeight: FontWeight.w300),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            activeColor: Colors.green,
          ),
        ),
      ),
    );
  }
}

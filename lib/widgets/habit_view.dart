import 'package:flutter/material.dart';
import 'package:habit_app/habit_provider.dart';
import 'package:habit_app/models/habit.dart';
import 'package:habit_app/widgets/habit_viewer.dart';
import 'package:provider/provider.dart';

class HabitView extends StatelessWidget {
  const HabitView({super.key, required this.habits});

  final List<Habit> habits;

  @override
  Widget build(BuildContext context) {
    int len = habits.length;
    return Consumer<HabitProvider>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${value.done} out of $len done',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20),
            LinearProgressIndicator(
              value: value.progress,
              backgroundColor: Colors.grey[300],
              color: Colors.green,
              minHeight: 10,
              borderRadius: BorderRadius.circular(5),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: habits.length,
                itemBuilder: (context, index) =>
                    HabitViewer(habit: habits[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

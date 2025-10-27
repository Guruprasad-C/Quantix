import 'package:flutter/material.dart';
import 'package:habit_app/habit_provider.dart';
import 'package:habit_app/widgets/habit_drawer.dart';
import 'package:habit_app/widgets/habit_view.dart';
import 'package:provider/provider.dart';

class HabitsScreen extends StatefulWidget {
  const HabitsScreen({super.key});

  @override
  State<HabitsScreen> createState() => _HabitsScreenState();
}

class _HabitsScreenState extends State<HabitsScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<HabitProvider>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: Text('Habit Tracker', style: TextStyle(fontSize: 25)),
          backgroundColor: Colors.greenAccent,
          foregroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: () {
                value.resetHabit();
              },
              icon: Icon(Icons.refresh),
            ),
          ],
        ),
        backgroundColor: Color(0xFFE8F5E9),
        drawer: HabitDrawer(),
        body: HabitView(habits: value.habits),
      ),
    );
  }
}

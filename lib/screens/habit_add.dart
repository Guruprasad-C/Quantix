import 'package:flutter/material.dart';
import 'package:habit_app/habit_provider.dart';
import 'package:habit_app/models/habit.dart';
import 'package:provider/provider.dart';

class HabitAdd extends StatefulWidget {
  const HabitAdd({super.key});

  @override
  State<HabitAdd> createState() => _HabitAddState();
}

class _HabitAddState extends State<HabitAdd> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<HabitProvider>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: Text('Add habit'),
          backgroundColor: const Color.fromARGB(255, 137, 243, 199),
          foregroundColor: Colors.white,
        ),
        backgroundColor: Color(0xFFE8F5E9),
        body: Column(
          children: [
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: 'Enter the habit name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _descController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter the describtion',
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            value.addHabit(
              Habit(
                name: _nameController.text,
                description: _descController.text,
                lastCompletedAt: DateTime.now(),
              ),
            );
            Navigator.pop(context);
          },
          backgroundColor: Colors.greenAccent,
          shape: CircleBorder(),
          child: Icon(Icons.done, size: 30),
        ),
      ),
    );
  }
}

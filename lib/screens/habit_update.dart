import 'package:flutter/material.dart';
import 'package:habit_app/habit_provider.dart';
import 'package:habit_app/models/habit.dart';
import 'package:provider/provider.dart';

class HabitUpdate extends StatefulWidget {
  const HabitUpdate({super.key, required this.habit});

  final Habit habit;

  @override
  State<HabitUpdate> createState() => _HabitUpdateState();
}

class _HabitUpdateState extends State<HabitUpdate> {
  TextEditingController? _nameCon;
  TextEditingController? _descCon;

  @override
  void initState() {
    super.initState();
    _nameCon = TextEditingController(text: widget.habit.name);
    _descCon = TextEditingController(text: widget.habit.description);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<HabitProvider>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: Text('Your habit'),
          backgroundColor: Colors.greenAccent,
          foregroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: () {
                value.remove(value.habits.indexOf(widget.habit));
                Navigator.pop(context);
              },
              icon: Icon(Icons.delete),
            ),
          ],
        ),
        backgroundColor: Color(0xFFE8F5E9),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                controller: _nameCon,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _descCon,
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            value.updateHabit(
              Habit(name: _nameCon!.text, description: _descCon!.text),
              value.habits.indexOf(widget.habit),
            );
            Navigator.pop(context);
          },
          shape: CircleBorder(),
          backgroundColor: Colors.greenAccent,
          child: Icon(Icons.done, size: 30, color: Colors.white),
        ),
      ),
    );
  }
}

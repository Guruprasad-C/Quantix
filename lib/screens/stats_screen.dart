import 'package:flutter/material.dart';
import 'package:habit_app/habit_provider.dart';
import 'package:provider/provider.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HabitProvider>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: Text('Your Progress'),
          backgroundColor: Colors.greenAccent,
          foregroundColor: Colors.white,
        ),
        backgroundColor: Color(0xFFE8F5E9),
        body: Card(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 200),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFE8F5E9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 8),
                              Text(
                                'Habits',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 3),
                              Text(
                                '${value.habits.length}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFE8F5E9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 8),
                              Text(
                                'Compeleted',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 3),
                              Text(
                                '${value.done}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          padding: EdgeInsets.symmetric(),
                          decoration: BoxDecoration(
                            color: Color(0xFFE8F5E9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 8),
                              Text(
                                'Streak',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 3),
                              Text(
                                '${value.streaks}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'This week',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: LinearProgressIndicator(
                      value: value.progress,
                      backgroundColor: Colors.grey[300],
                      color: Colors.green,
                      minHeight: 10,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '${value.done} out of ${value.habits.length} completed',
                    style: TextStyle(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

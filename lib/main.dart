import 'package:flutter/material.dart';
import 'package:habit_app/habit_provider.dart';
import 'package:habit_app/screens/habits.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => HabitProvider())],
      child: MaterialApp(
        home: const HabitsScreen(),
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}

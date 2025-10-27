import 'package:uuid/uuid.dart';

class Habit {
  Habit({
    required this.name,
    required this.description,
    this.isCompletedToday = false,
    this.streak = 0,
    this.lastCompletedAt,
  }) : id = Uuid().v4();

  final String id;
  final String name;
  final String description;
  bool isCompletedToday;
  int streak;
  DateTime? lastCompletedAt;
}

import 'package:flutter/material.dart';

class HabitDrawer extends StatelessWidget {
  const HabitDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFFE8F5E9),
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.greenAccent),
            child: Row(
              children: [
                Icon(Icons.face, size: 40),
                SizedBox(width: 15),
                Text(
                  'Habit Stats',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text(
              'Habits',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            leading: Icon(Icons.favorite_border, size: 27),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Stats',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            leading: Icon(Icons.query_stats_sharp, size: 27),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

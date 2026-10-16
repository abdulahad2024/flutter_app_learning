import 'package:flutter/material.dart';
import 'package:flutter_app_learning/flutter_task_02/screen/profile/profile_screen.dart';

import 'category.dart';

class Services extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Category(
            icon: Icons.menu_book_rounded,
            label: 'My Courses',
            color: const Color(0xFF3B82F6),
          ),
          Category(
            icon: Icons.calendar_month,
            label: 'Routine',
            color: const Color(0xFF10B981),
          ),
          Category(
            icon: Icons.assignment,
            label: 'Assignments',
            color: const Color(0xFFF59E0B),
          ),
          Category(
            icon: Icons.person,
            label: 'Profile',
            color: const Color(0xFF8B5CF6),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfileScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
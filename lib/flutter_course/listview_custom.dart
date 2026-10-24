import 'package:flutter/material.dart';

class ListviewCustom extends StatelessWidget {
  const ListviewCustom({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> students = [
      {"name": "Abdul Ahad", "department": "Computer Science", "id": "101"},
      {"name": "Rakib", "department": "Computer Science", "id": "102"},
      {"name": "Tanvir Ahmed", "department": "Computer Science", "id": "103"},
      {
        "name": "Sumaiya Akter",
        "department": "Software Engineering",
        "id": "104",
      },
      {"name": "Nusrat Jahan", "department": "Computer Science", "id": "105"},
      {
        "name": "Mehedi Hasan",
        "department": "Information Technology",
        "id": "106",
      },
      {"name": "Fahim Faisal", "department": "Computer Science", "id": "107"},
      {
        "name": "Sadia Islam",
        "department": "Software Engineering",
        "id": "108",
      },
      {
        "name": "Imran Hossain",
        "department": "Information Technology",
        "id": "109",
      },
      {"name": "Ayesha Siddika", "department": "Computer Science", "id": "110"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter ListView.Custom",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),

      body: ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate((context, index) {
          final student = students[index];
          final id = student['id'];
          final name = student['name'];
          final department = student['department'];

          return ListTile(
            leading: CircleAvatar(child: Text('$index')),
            title: Text(name),
            subtitle: Text('Department: $department'),
          );
        }, childCount: students.length),
      ),
    );
  }
}

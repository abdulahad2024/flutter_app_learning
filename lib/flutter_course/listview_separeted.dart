import 'package:flutter/material.dart';

class ListviewSepareted extends StatelessWidget {
  const ListviewSepareted({super.key});

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
        title: Text("Flutter ListView", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),

      body: ListView.custom(
        scrollDirection: Axis.vertical,
        childrenDelegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(child: Text('$index')),
              title: Text('Student Item $index'),
              subtitle: Text('Department: Computer Science'),
            );
          },
          childCount: 10, // লিস্টে মোট কয়টি আইটেম থাকবে
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app_learning/flutter_task_02/screen/home/home_screen.dart';
import 'package:flutter_app_learning/flutter_task_02/screen/profile/profile_screen.dart';

import 'flutter_course.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  int currentIndex = 0;

  List<Widget> screen = [
    HomeScreen(),
    FlutterCourse(),
    ProfileScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(


      body: screen[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          onTap: (index){
            setState(() {
              currentIndex = index;
            });

          },

          items: [

            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.flutter_dash),label: "Flutter"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),

      ]),



    );
  }
}

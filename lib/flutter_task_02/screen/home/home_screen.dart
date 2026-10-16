import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_learning/flutter_task_02/data/app_helpers.dart';
import 'package:flutter_app_learning/flutter_task_02/screen/profile/profile_screen.dart';
import 'package:flutter_app_learning/flutter_task_02/widgets/category.dart';
import 'package:flutter_app_learning/flutter_task_02/widgets/class_list.dart';
import 'package:flutter_app_learning/flutter_task_02/widgets/header.dart';
import 'package:flutter_app_learning/flutter_task_02/widgets/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) return;
        final bool shouldPop = await AppHelpers.showExitPopup(context);
        if (shouldPop) {
          SystemNavigator.pop();
        }
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFF7F9FC),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Header(),
              const SizedBox(height: 30),



              Services(),

              const SizedBox(height: 15),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Upcoming Classes',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('See All button pressed!'),
                          ),
                        );
                      },
                      child: const Text(
                        'See All',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),
              const ClassList(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}


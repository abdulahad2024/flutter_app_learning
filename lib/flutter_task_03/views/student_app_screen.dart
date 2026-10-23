import 'package:flutter/material.dart';
import 'package:flutter_app_learning/flutter_task_03/controller/counter_controller.dart';
import 'package:flutter_app_learning/flutter_task_03/views/profile_screen.dart';
import 'package:flutter_app_learning/flutter_task_03/widgets/info_card.dart';
import 'package:get/get.dart';

class StudentAppScreen extends StatelessWidget {
  const StudentAppScreen({super.key});


  @override
  Widget build(BuildContext context) {

    final CounterController counterController = Get.put(CounterController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Student App", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.black87),
            onPressed: () => counterController.showSettingsDialog(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const CircleAvatar(
                radius: 45,
                backgroundColor: Color(0xFFD0E1FD),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage('https://img.magnific.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg'),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                "Abdul Ahad",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Flutter Student",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              const SizedBox(height: 30),
              InfoCard(icon: Icons.person, iconBgColor: Colors.pink.shade50, iconColor: Colors.pink, title: "Student Name", value: "Abdul Ahad"),
              const SizedBox(height: 12),
              InfoCard(icon: Icons.badge, iconBgColor: Colors.green.shade50, iconColor: Colors.green, title: "Student ID", value: "101"),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Get.to(() => const ProfileScreen());
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "View Profile",
                        style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_forward, color: Colors.white, size: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_app_learning/flutter_task_03/controller/counter_controller.dart';
import 'package:flutter_app_learning/flutter_task_03/widgets/profile_item.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.put(CounterController());

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 10),
              const CircleAvatar(
                radius: 45,
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                    'https://img.magnific.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg',
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                "Abdul Ahad",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Student ID: 194682",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              const SizedBox(height: 24),
              ProfileItem(
                icon: Icons.email_outlined,
                title: "Email",
                subtitle: "abdulahad@gmail.com",
              ),
              const Divider(height: 1, thickness: 0.5),
              ProfileItem(
                icon: Icons.school_outlined,
                title: "Department",
                subtitle: "Computer Science",
              ),
              const Divider(height: 1, thickness: 0.5),
              ProfileItem(
                icon: Icons.calendar_today_outlined,
                title: "Join Date",
                subtitle: "15 January 2024",
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.08),
                      spreadRadius: 2,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const Text(
                      "My Counter",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton.filled(
                          onPressed: () => counterController.decrement(),
                          icon: const Icon(Icons.remove),
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.grey.shade300,
                            foregroundColor: Colors.black87,
                          ),
                        ),
                        const SizedBox(width: 24),
                        Obx(
                          () => Text(
                            '${counterController.count.value}',
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 24),
                        IconButton.filled(
                          onPressed: () => counterController.increment(),
                          icon: const Icon(Icons.add),
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.pink,
                            foregroundColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

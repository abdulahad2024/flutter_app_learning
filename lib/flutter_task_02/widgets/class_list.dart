import 'package:flutter/material.dart';
import 'package:flutter_app_learning/flutter_task_02/data/class_data.dart';
import 'package:flutter_app_learning/flutter_task_02/screen/video_player/video_player_screen.dart';
import 'class_card.dart';

class ClassList extends StatelessWidget {
  const ClassList({super.key});

  @override
  Widget build(BuildContext context) {


    final List<Map<String, dynamic>> data = ClassData.items;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView.builder(
        itemCount: data.length,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {


          final item = data[index];

          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPlayerScreen(
                    videoUrl: item['videoUrl'],
                    title: item['title'],
                  ),
                ),
              );
            },
            child: ClassCard(
              icon: item['icon'],
              title: item['title'],
              room: item['room'],
              time: item['time'],
              iconBgColor: item['iconBgColor'],
              iconColor: item['iconColor'],
            ),
          );
        },
      ),
    );
  }
}
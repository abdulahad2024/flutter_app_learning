import 'package:flutter/material.dart';
import 'package:flutter_app_learning/flutter_course/bottom_nav.dart';
import 'package:flutter_app_learning/flutter_course/checkbox_screen.dart';
import 'package:flutter_app_learning/flutter_course/flutter_drawer.dart';
import 'package:flutter_app_learning/flutter_course/flutter_listview.dart';
import 'package:flutter_app_learning/flutter_task_03/views/student_app_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'flutter_course/listview_custom.dart';
import 'flutter_course/listview_separeted.dart';
import 'flutter_course/grid_view.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),

      home: CheckboxExample(),

    );
  }
}

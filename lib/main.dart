import 'package:flutter/material.dart';
import 'package:workout_tracker/workout_home_page.dart';
import 'package:workout_tracker/workout_list_page.dart';
import 'workout_list_page.dart';
import 'workout_guide_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //home: LandingPage()
        //home: WorkOutListPage()
       // home: WorkoutGuidePage()
      home: WorkoutHomePage()
    );
  }
}

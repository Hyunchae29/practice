import 'package:flutter/material.dart';

class WorkoutHomePage extends StatefulWidget {
  const WorkoutHomePage({super.key});

  @override
  State<WorkoutHomePage> createState() => _WorkoutHomePageState();
}

class _WorkoutHomePageState extends State<WorkoutHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Text('Just do it'),
                  Text('간단하다. 흔들리면 그것은 지방이다')
                ],
              ),
              Container(
                width:80,
                height:80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage('assets/me.jpg')),
                ),
              ),
            ],
          ),
      ),

    );

  }
}


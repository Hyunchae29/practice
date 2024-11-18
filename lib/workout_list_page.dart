import 'package:flutter/material.dart';

class WorkOutListPage extends StatelessWidget {
  WorkOutListPage({super.key});
  List<String> workoutName=[
    '스쿼트',
    '사이드런지',
    '푸쉬업',
    '마운틴클림버',
    '런지',
    '덤벨컬',
    '덩키킥',
    '친업',
    '벤치프레스',

  ];
  List<String> workoutImage=[
    'squat.gif',
    'side_lunge.gif',
    'pushup.gif',
    'mountain_climber.gif',
    'lunge.gif',
    'dumbell_curl.gif',
    'donkey_kick.gif',
    'chinup.gif',
    'benchpress.gif',
  ];
  List<int> workoutMinutes=[
    30,
    20,
    15,
    15,
    20,
    40,
    30,
    25,
    10,
  ];
  List<Row> getWorkoutList(){
    List<Row> workoutListRow=[];
    for(var i=0;i<workoutName.length;i++){
      var name=workoutName[i];
      var image=workoutImage[i];
      var minutes=workoutMinutes[i];
      workoutListRow.add(
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('assets/$image')),
              ),
            ),
            Expanded(
              child: Text('${i+1}.$name', style: TextStyle(fontSize: 20)),
            ),
            Padding(
              padding: const EdgeInsets.only(right:10.0),
              child: Text('$minutes 분', style: TextStyle(fontSize: 20, color: Colors.blue)),
            )
          ],
        ),
      );
    }
    return workoutListRow;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WorkoutList'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children:getWorkoutList(),
        ),
      ),
    );
  }
}
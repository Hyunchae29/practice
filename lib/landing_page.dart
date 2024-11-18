import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/runner.png'),
              fit: BoxFit.cover,
              opacity: 0.3,
            ),
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  color: Colors.pinkAccent,
                  child: Text(
                    '남들이 그만둘 때, 난 계속한다',
                    style: TextStyle(fontSize: 23, fontFamily: "NanumBrushScript"),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                ),
                Column(
                  //crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: Text(
                        '환영합니다',
                        style: TextStyle(fontSize: 35, fontFamily: "Jua"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(30),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'START',
                          style: TextStyle(fontSize: 35),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
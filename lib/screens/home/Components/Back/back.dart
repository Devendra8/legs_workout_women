import 'package:legs_workout_women/common/colours.dart';
import 'package:flutter/material.dart';
import 'package:legs_workout_women/data/back/back_exercises.dart';
import 'package:legs_workout_women/screens/home/Components/Back/body.dart';
import 'package:legs_workout_women/screens/home/Components/Back/back_exercise_page.dart';

class Back extends StatelessWidget {
  const Back({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: violet,
        elevation: 0.0,
        title: Text(
          "Jaw Exercises",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            // fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        color: violet,
        padding: const EdgeInsets.all(15.0),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: backSet
                    .map(
                      (backSet) => Body(back: backSet),
                    )
                    .toList(),
              ),
            ),
            Positioned(
              child: Container(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    onSurface: Colors.grey,
                    shadowColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    minimumSize: Size(150, 50),
                    elevation: 5,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => backExercisePage()));
                  },
                  child: Text('Start',
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),

      // bottomNavigationBar: GestureDetector(
      //   onTap: () {},
      //   child: Container(
      //     color: Colors.green,
      //     margin: EdgeInsets.all(10),
      //     height: 50,
      //     width: 325,
      //     child: Center(
      //       child: Text(
      //         "Start",
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}

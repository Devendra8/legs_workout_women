import 'package:flutter/material.dart';
import 'package:legs_workout_women/common/colours.dart';
import 'package:legs_workout_women/model/levels.dart';
import 'package:legs_workout_women/screens/home/Components/advance/components/advance_exercise_page.dart';

class AdvanceExerciseListPage extends StatelessWidget {
  final ExerciseSet exerciseSet;

  const AdvanceExerciseListPage({
    required this.exerciseSet,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: violet,
        elevation: 0.0,
        title: Text(
          "Advance Exercises",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            // fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        color: violet,
        child: Stack(children: [
          SingleChildScrollView(
            child: Column(
              children: [
                for (var exerciseSet in exerciseSet.exercises)
                  exerciseSet.name != 'Rest'
                      ? Container(
                          height: 130,
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  width: 2.0, color: Color(0xFFFFFFFF)),
                              color: Color(0xFFFFFFFF),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 2), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              exerciseSet.name,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: darkBlue),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "${exerciseSet.duration} Sec  ",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.green,
                                            ),
                                          ),
                                          Text(
                                            "${exerciseSet.noOfReps} Reps  ",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.green),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 120,
                                  height: 130,
                                  child: Image.asset(
                                    exerciseSet.animation,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      : Container(),
              ],
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
                      builder: (context) =>
                          AdvanceExercisePage(exerciseSet: exerciseSet)));
                },
                child: Text('Start',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

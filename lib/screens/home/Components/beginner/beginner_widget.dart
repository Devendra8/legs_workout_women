import 'package:butt_workout/common/colours.dart';
import 'package:butt_workout/screens/home/Components/beginner/components/beginner_exercise_bottom_sheet.dart';
import 'package:butt_workout/screens/home/Components/beginner/components/beginner_exercise_list_page.dart';
import 'package:flutter/material.dart';
import 'package:butt_workout/main.dart';
import 'package:butt_workout/model/beginner/beginner_exercise_set.dart';
import 'package:percent_indicator/percent_indicator.dart';

class BeginnerWidget extends StatelessWidget {
  final ExerciseSet exerciseSet;

  const BeginnerWidget({
    required this.exerciseSet,
  });

  @override
  Widget build(BuildContext context) {
    final minutes = exerciseSet.totalDuration / 60;

    final minutes1 = minutes.ceil();

    String? dayValue = exerciseSet.Day;

    int? ProgressValueText;

    double? progressValue = box.get('BeginnerDay$dayValue');

    if (progressValue.toString() == 'null') {
      progressValue = 0;
      ProgressValueText = 0;
    } else {
      ProgressValueText = progressValue!.round();
      progressValue = progressValue / 100;
    }

    return Container(
      height: 110,
      padding: const EdgeInsets.all(15.0),
      child: GestureDetector(
        onTap: () => showModalBottomSheet(
          context: context,
          builder: (context) => SingleChildScrollView(
            child: Column(
              children: [
                BeginnerExerciseBottomSheet(exerciseSet: exerciseSet),
              ],
            ),
          ),
        ),
        child: Container(
          // width: double.infinity,
          // height: 105,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 2.0, color: Color(0xFFFFFFFF)),
            color: Color(0xFFFFFFFF),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    exerciseSet.name,
                    style: TextStyle(
                      fontSize: 16,
                      color: darkBlue,
                    ),
                  ),
                  Text(
                    exerciseSet.Day,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: darkBlue,
                    ),
                  ),
                ],
              ),
              Container(
                width: 2,
                color: Colors.grey,
                height: 50,
              ),
              Container(
                alignment: Alignment.center,
                child: CircularPercentIndicator(
                  radius: 25.0,
                  lineWidth: 5.0,
                  percent: progressValue,
                  center: Text(
                    "$ProgressValueText%",
                    style: TextStyle(
                      color: darkBlue,
                    ),
                  ),
                  progressColor: Colors.green,
                ),
              ),
              Container(
                width: 2,
                color: Colors.grey,
                height: 50,
              ),
              Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    // style: ElevatedButton.styleFrom(
                    //   primary: Colors.green.shade600,
                    //   onSurface: Colors.transparent,
                    //   shadowColor: Colors.transparent,
                    // ),
                    style: ElevatedButton.styleFrom(
                      primary: violet,
                      onSurface: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    // color: Colors.purple,
                    // shape: RoundedRectangleBorder(
                    // borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BeginnerExerciseListPage(
                              exerciseSet: exerciseSet)));
                    },
                    child: const Text(
                      "START",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

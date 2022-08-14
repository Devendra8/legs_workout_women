// ignore_for_file: prefer_equal_for_default_values

import 'package:legs_workout_women/common/colours.dart';
import 'package:flutter/material.dart';
import 'package:legs_workout_women/model/advance/advance_exercise_set.dart';

class AdvanceExerciseBottomSheet extends StatelessWidget {
  final ExerciseSet exerciseSet;

  const AdvanceExerciseBottomSheet({
    required this.exerciseSet,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: violet,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                for (var item in exerciseSet.exercises)
                  ListTile(
                    title: Text(item.name),
                    subtitle: Row(
                      children: [
                        Text("${item.noOfReps} Reps  "),
                        Text("${item.duration} Seconds"),
                      ],
                    ),
                  )
              ],
            ),
          )),
    );
  }
}

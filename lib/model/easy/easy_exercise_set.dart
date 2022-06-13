import 'package:flutter/material.dart';

import 'easy_exercise.dart';

enum ExerciseType { low, mid, hard }

class ExerciseSet {
  final String name;
  final String Day;
  final List<Exercise> exercises;
  final Color color;

  ExerciseSet({
    required this.name,
    required this.Day,
    required this.exercises,
    required this.color,
  });

  double get totalDuration {
    double sum = 0;
    exercises.forEach((element) {
      sum += element.duration;
    });

    return sum;
  }
}

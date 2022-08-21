import 'package:flutter/cupertino.dart';

class level {
  final String title;
  final Color titleColor;
  final String image;
  final Color color;
  final List<ExerciseSet> exerciseDays;
  // final Widget page;

  level({
    required this.title,
    required this.titleColor,
    required this.image,
    required this.color,
    required this.exerciseDays,
    // required this.page,
  });
}

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

class Exercise {
  final String name;
  final int duration;
  final int noOfReps;
  final String animation;
  final String sound;
  final String exerciseNo;
  final String type;

  Exercise(
      {required this.name,
      required this.duration,
      required this.noOfReps,
      required this.animation,
      required this.sound,
      required this.exerciseNo,
      required this.type});
}

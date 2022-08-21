import 'package:legs_workout_women/common/colours.dart';
import 'package:legs_workout_women/data/advance/advance_exercise_sets.dart';
import 'package:legs_workout_women/data/beginner/beginner_exercise_sets.dart';
import 'package:legs_workout_women/data/intermediate/intermediate_exercise_sets.dart';
import 'package:legs_workout_women/model/levels.dart';

final levels = [
  level(
    title: 'Beginner',
    titleColor: backtiptitle,
    image: "assets/beginner.png",
    color: backtip,
    exerciseDays: exerciseBeginnerSets,
  ),
  level(
    title: 'Intermediate',
    titleColor: backtiptitle,
    image: "assets/intermediate.png",
    color: backtip,
    exerciseDays: exerciseIntermediateSets,
  ),
  level(
    title: 'Advance',
    titleColor: backtiptitle,
    image: "assets/advance.png",
    color: backtip,
    exerciseDays: exerciseAdvanceSets,
  ),
];

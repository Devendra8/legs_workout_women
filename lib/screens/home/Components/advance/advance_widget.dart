import 'package:legs_workout_women/common/colours.dart';
import 'package:legs_workout_women/screens/home/Components/advance/components/advance_exercise_bottom_sheet.dart';
import 'package:legs_workout_women/screens/home/Components/advance/components/advance_exercise_list_page.dart';
import 'package:flutter/material.dart';
import 'package:legs_workout_women/main.dart';
import 'package:legs_workout_women/model/advance/advance_exercise_set.dart';
import 'package:percent_indicator/percent_indicator.dart';

class AdvanceWidget extends StatefulWidget {
  final ExerciseSet exerciseSet;

  const AdvanceWidget({
    required this.exerciseSet,
  });

  @override
  State<AdvanceWidget> createState() => _AdvanceWidgetState();
}

class _AdvanceWidgetState extends State<AdvanceWidget> {
  @override
  Widget build(BuildContext context) {
    final minutes = widget.exerciseSet.totalDuration / 60;

    final minutes1 = minutes.ceil();

    String? dayValue = widget.exerciseSet.Day;

    int previousDayValue = int.parse(widget.exerciseSet.Day) - 1;

    int previousDayProgressValueInteger = previousDayValue;

    int? ProgressValueText;

    double? progressValue = box.get('HardDay$dayValue', defaultValue: 0.0);

    double? previousDayProgressValue =
        box.get('HardDay$previousDayProgressValueInteger', defaultValue: 0.0);

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
        onTap: dayValue == '1'
            ? () => showModalBottomSheet(
                  context: context,
                  builder: (context) => SingleChildScrollView(
                    child: Column(
                      children: [
                        AdvanceExerciseBottomSheet(
                            exerciseSet: widget.exerciseSet),
                      ],
                    ),
                  ),
                )
            : previousDayProgressValue == 100
                ? () => showModalBottomSheet(
                      context: context,
                      builder: (context) => SingleChildScrollView(
                        child: Column(
                          children: [
                            AdvanceExerciseBottomSheet(
                                exerciseSet: widget.exerciseSet),
                          ],
                        ),
                      ),
                    )
                : null,
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
                    widget.exerciseSet.name,
                    style: TextStyle(
                      fontSize: 16,
                      color: darkBlue,
                    ),
                  ),
                  Text(
                    widget.exerciseSet.Day,
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
                    onPressed: dayValue == '1'
                        ? () {
                            setState(() {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(
                                      builder: (context) =>
                                          AdvanceExerciseListPage(
                                              exerciseSet: widget.exerciseSet)))
                                  .then(
                                    (_) => setState(() {
                                      progressValue = box.get(
                                          'HardDay$dayValue',
                                          defaultValue: 0.0);
                                      previousDayProgressValue = box.get(
                                          'HardDay$previousDayProgressValueInteger');
                                    }),
                                  );
                            });
                          }
                        : previousDayProgressValue! > 99
                            ? () {
                                setState(() {
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(
                                          builder: (context) =>
                                              AdvanceExerciseListPage(
                                                  exerciseSet:
                                                      widget.exerciseSet)))
                                      .then(
                                        (_) => setState(() {
                                          progressValue = box.get(
                                              'HardDay$dayValue',
                                              defaultValue: 0.0);
                                          previousDayProgressValue = box.get(
                                              'HardDay$previousDayProgressValueInteger');
                                        }),
                                      );
                                });
                              }
                            : null,
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

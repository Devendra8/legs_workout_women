import 'dart:async';

import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:legs_workout_women/common/colours.dart';
import 'package:legs_workout_women/common/exit_exercise_back_screen.dart';
import 'package:legs_workout_women/common/exit_exercise_screen.dart';
import 'package:legs_workout_women/model/levels.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class IntermediateExercisePage extends StatefulWidget {
  final ExerciseSet exerciseSet;

  const IntermediateExercisePage({
    required this.exerciseSet,
  });

  @override
  _IntermediateExercisePageState createState() =>
      _IntermediateExercisePageState();
}

class _IntermediateExercisePageState extends State<IntermediateExercisePage> {
  final controller = PageController();

  late Exercise currentExercise;

  Timer? timer;

  late int reps = currentExercise.noOfReps;

  int index = 0;

  int ExerciseCount = 0;

  double? progress;

  double? calorie;

  double? totalProgressValue;

  late int totalExercise = widget.exerciseSet.exercises.length;

  late Exercise firsExercise;
  late Exercise lastExercise;

  late Box box;

  String? dayValue;

  CountDownController _controller = CountDownController();

  String? title;

  int _duration = 0;

  int todayDate = DateTime.now().day;

  bool _isPlaying = true;
  bool _isPaused = false;

  @override
  void initState() {
    super.initState();
    currentExercise = widget.exerciseSet.exercises.first;
    totalProgressValue = 100 / widget.exerciseSet.exercises.length;
    print(widget.exerciseSet.exercises.length);
    dayValue = widget.exerciseSet.Day;
    _duration = currentExercise.duration;

    firsExercise = widget.exerciseSet.exercises.first;
    lastExercise = widget.exerciseSet.exercises.last;

    hiveState();

    // Duration seconds = widget.exerciseSet.exercises.first.duration;
    // int remReps = currentExercise.noOfReps;
  }

  Future<void> hiveState() async {
    box = await Hive.openBox('box');

    progress = box.get('IntermediateDay$dayValue');
    calorie = box.get('CalorieDay$todayDate', defaultValue: 0.0);
    print(progress);

    if (progress! < 99) {
      progress = 0;
      print("intermediate progress 0 executed");
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => showExitExercisePopup(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text(currentExercise.name),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.green.shade600,
        ),
        body: buildVideos(),
      ),
    );
  }

  Widget buildVideos() => PageView(
        pageSnapping: true,
        controller: controller,
        onPageChanged: (index) => setState(() {
          currentExercise = widget.exerciseSet.exercises[index];
        }),
        children: [
          buildTime(),
        ],
      );

  Widget buildTime() {
    return Stack(alignment: Alignment.topCenter, children: [
      Container(
        alignment: Alignment.topCenter,
        height: MediaQuery.of(context).size.height * 0.6,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage(currentExercise.animation),
            fit: BoxFit.contain,
          ),
        ),
        child: Row(
          children: [
            IconButton(
                onPressed: currentExercise == firsExercise
                    ? null
                    : currentExercise.type == "time"
                        ? () {
                            setState(() {
                              _controller.restart();
                              _controller.pause();
                              _isPaused = true;
                              index = index - 1;
                              currentExercise =
                                  widget.exerciseSet.exercises[index];
                              ExerciseCount = index;
                              if (progress.toString() == 'null') {
                                progress = 0;
                              }
                              if (progress != 100) {
                                progress = progress! - totalProgressValue!;
                                // progress = progress! / 100;
                                box.put('IntermediateDay$dayValue', progress);
                              }
                            });
                          }
                        : () {
                            setState(() {
                              if (progress.toString() == 'null') {
                                progress = 0;
                              }
                              if (progress != 100) {
                                progress = progress! - totalProgressValue!;
                                // progress = progress! / 100;
                                box.put('IntermediateDay$dayValue', progress);
                              }
                              setState(() {});
                              index = index - 1;
                              ExerciseCount = index;
                              currentExercise =
                                  widget.exerciseSet.exercises[index];
                              _isPaused = true;
                              _isPlaying = false;
                            });
                          },
                icon: Icon(
                  Icons.keyboard_arrow_left,
                  color: currentExercise == firsExercise
                      ? Colors.grey
                      : Colors.black,
                )),
            IconButton(
                onPressed: currentExercise == lastExercise
                    ? null
                    : currentExercise.type == "time"
                        ? () {
                            setState(() {
                              _controller.restart();
                              _controller.pause();
                              _isPaused = true;
                              index = index + 1;
                              currentExercise =
                                  widget.exerciseSet.exercises[index];
                              ExerciseCount = index;
                              if (progress.toString() == 'null') {
                                progress = 0;
                              }
                              if (progress != 100) {
                                progress = progress! + totalProgressValue!;
                                // progress = progress! / 100;
                                box.put('IntermediateDay$dayValue', progress);
                              }
                              print(progress);
                            });
                          }
                        : () {
                            print("Executed icon button");

                            setState(() {
                              if (progress.toString() == 'null') {
                                progress = 0;
                              }
                              if (progress != 100) {
                                progress = progress! + totalProgressValue!;
                                // progress = progress! / 100;
                                box.put('IntermediateDay$dayValue', progress);
                              }
                              setState(() {});
                              index = index + 1;
                              ExerciseCount = index;
                              currentExercise =
                                  widget.exerciseSet.exercises[index];
                              _isPaused = true;
                              _isPlaying = false;
                            });
                          },
                icon: Icon(
                  Icons.keyboard_arrow_right_rounded,
                  color: currentExercise == lastExercise
                      ? Colors.grey
                      : Colors.black,
                )),
          ],
        ),
      ),
      Positioned(
        bottom: 0,
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height * 0.30,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.bottomCenter,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                StepProgressIndicator(
                  totalSteps: totalExercise,
                  currentStep: ExerciseCount,
                  // widget.exerciseSet.exercises.indexOf(currentExercise),
                  selectedColor: Colors.red,
                  unselectedColor: Colors.yellow,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              child: index % 2 == 0
                                  ? RichText(
                                      text: TextSpan(
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.black,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: 'Exercise ',
                                          ),
                                        ],
                                      ),
                                    )
                                  : Text(
                                      "Rest",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.black,
                                      ),
                                    )),
                          Container(
                              child: index % 2 == 0
                                  ? RichText(
                                      text: TextSpan(
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.black,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: widget.exerciseSet
                                                  .exercises[index].exerciseNo,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 2, 175, 255))),
                                          TextSpan(text: ' of '),
                                          TextSpan(
                                              text: widget.exerciseSet.exercises
                                                  .last.exerciseNo,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 2, 175, 255))),
                                        ],
                                      ),
                                    )
                                  : Container())
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: currentExercise.type == "time"
                          ? CircularCountDownTimer(
                              key: null,
                              duration: _duration,
                              initialDuration: 0,
                              controller: _controller,
                              width: 80,
                              height: 80,
                              ringColor: Colors.green.shade700,
                              // ringGradient: RadialGradient(
                              //   center: Alignment(-0.8, -0.6),
                              //   colors: [Color(0xFF9ab0ea), Color(0xFF1d55df)],
                              //   radius: 1.0,
                              // ),
                              fillColor: Colors.green,
                              // fillColor: Colors.purpleAccent[100]!,
                              // fillGradient: RadialGradient(
                              //   center: Alignment(-0.8, -0.6),
                              //   colors: [Color(0xFF9ab0ea), Color(0xFF1d55df)],
                              //   radius: 1.0,
                              // ),
                              backgroundColor: Colors.green,
                              backgroundGradient: null,
                              strokeWidth: 8.0,
                              strokeCap: StrokeCap.round,
                              textStyle: TextStyle(
                                  fontSize: 33.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              textFormat: CountdownTextFormat.S,
                              isReverse: true,
                              isReverseAnimation: true,
                              isTimerTextShown: true,
                              autoStart: true,
                              onStart: () {
                                // Here, do whatever you want
                                print('Countdown Started');
                                currentExercise.type == "rep"
                                    ? _controller.pause()
                                    : null;
                              },
                              onComplete: () {
                                print('Countdown Ended');
                                if (progress.toString() == 'null') {
                                  progress = 0;
                                }
                                if (progress != 100) {
                                  progress = progress! + totalProgressValue!;
                                  // progress = progress! / 100;
                                  box.put('IntermediateDay$dayValue', progress);
                                }
                                print(progress);
                                calorie = calorie! + 5;
                                box.put('CalorieDay$todayDate', calorie);
                                setState(() {
                                  if (index <
                                      widget.exerciseSet.exercises.length - 1) {
                                    print("Before" + ExerciseCount.toString());
                                    index = index + 1;
                                    ExerciseCount = index;
                                    print("After" + ExerciseCount.toString());
                                    currentExercise =
                                        widget.exerciseSet.exercises[index];
                                    _duration = currentExercise.duration;
                                    _controller.restart();
                                  } else if (index ==
                                      widget.exerciseSet.exercises.length - 1) {
                                    showExitExerciseBackPopup(context);
                                  } else {
                                    print(
                                        "IN ELSE " + ExerciseCount.toString());
                                    ExerciseCount += 1;
                                    // _controller.pause();
                                  }
                                });
                              },
                            )
                          : Container(
                              child: Column(
                                children: [
                                  Text(
                                    "x ${currentExercise.noOfReps}",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Reps",
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Next: ',
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text:
                                      " ${widget.exerciseSet.exercises.length != index + 1 ? widget.exerciseSet.exercises[index + 1].name : 'Finish ;)'}",
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                FlatButton(
                    minWidth: MediaQuery.of(context).size.width,
                    height: 50,
                    color: violet,
                    // color: _isPlaying || currentExercise.type == "rep" ? Colors.amber : violet  ,
                    onPressed: () => {
                          if (progress.toString() == 'null') {progress = 0},
                          if (progress != 100)
                            {
                              progress = progress! + totalProgressValue!,
                              // progress = progress! / 100;
                              box.put('IntermediateDay$dayValue', progress),
                            },
                          calorie = calorie! + 5,
                          box.put('CalorieDay$todayDate', calorie),
                          if (currentExercise.type == "rep")
                            {
                              if (index <
                                  widget.exerciseSet.exercises.length - 1)
                                {
                                  setState(() {
                                    index = index + 1;
                                    ExerciseCount = index;
                                    currentExercise =
                                        widget.exerciseSet.exercises[index];
                                    _isPaused = true;
                                    _isPlaying = false;
                                  })
                                }
                              else if (index ==
                                  widget.exerciseSet.exercises.length - 1)
                                {showExitExerciseBackPopup(context)}
                            }
                          else
                            {
                              _isPlaying
                                  ? pause()
                                  : _isPaused
                                      ? resume()
                                      : play(),
                            }
                        },
                    child: currentExercise.type == "rep"
                        ? Text(
                            "Done",
                            style: TextStyle(fontSize: 18),
                          )
                        : (_isPlaying)
                            ? Text(
                                "Pause",
                                style: TextStyle(fontSize: 18),
                              )
                            : (_isPaused)
                                ? Text(
                                    "Resume",
                                    style: TextStyle(fontSize: 18),
                                  )
                                : Text(
                                    "Play",
                                    style: TextStyle(fontSize: 18),
                                  ))
              ]),
        ),
      ),
    ]);
  }

  Future play() async {
    _controller.pause();

    setState(() {
      _isPlaying = true;
      _isPaused = true;
    });
  }

  Future pause() async {
    _controller.pause();

    setState(() {
      _isPlaying = false;
    });
  }

  Future resume() async {
    _controller.resume();

    setState(() {
      _isPlaying = true;
    });
  }

  @override
  void dispose() {
    super.dispose();
    // timer!.cancel();
  }

  _button({required String title, VoidCallback? onPressed}) {
    return Expanded(
        child: RaisedButton(
      child: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      onPressed: onPressed,
      color: Colors.purple,
    ));
  }
}

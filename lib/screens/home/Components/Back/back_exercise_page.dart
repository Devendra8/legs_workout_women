// import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:legs_workout_women/common/colours.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:legs_workout_women/common/exit_exercise_screen.dart';
import 'package:legs_workout_women/data/back/back_exercises.dart';
import 'package:legs_workout_women/model/back/back_exercise.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class backExercisePage extends StatefulWidget {
  @override
  _backExercisePageState createState() => _backExercisePageState();
}

class _backExercisePageState extends State<backExercisePage> {
  final controller = PageController();

  late Exercise currentExercise;

  // late Duration seconds = currentExercise.duration;

  late int reps = currentExercise.noOfReps;

  int index = 0;

  int? calorie;

  late int totalExercise = backSet.length;

  late Box box;

  CountDownController _controller = CountDownController();
  // final exerciseAudioPlayer = AssetsAudioPlayer();

  String? title;

  late int _duration = currentExercise.duration;

  bool _isPlaying = false;
  bool _isPaused = false;
  var exerciseNumber = 0;

  @override
  void initState() {
    super.initState();
    currentExercise = backSet.first;

    hiveState();
    _clearPlayer();
  }

  Future<void> hiveState() async {
    box = await Hive.openBox('box');
    calorie = box.get('todayCalore', defaultValue: 0);
  }

  void _clearPlayer() {
    setState(() {
      _isPlaying = false;
      _isPaused = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => showExitExercisePopup(context),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: violet,
          title: Text(currentExercise.name),
          centerTitle: true,
          elevation: 0,
        ),
        body: buildVideos(),
      ),
    );
  }

  Widget buildVideos() => PageView(
        pageSnapping: true,
        controller: controller,
        onPageChanged: (index) => setState(() {
          currentExercise = backSet[index];
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
            fit: BoxFit.cover,
          ),
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
                currentStep: backSet.indexOf(currentExercise),
                selectedColor: Colors.red,
                unselectedColor: Colors.yellow,
              ),
              // StepProgressIndicator(
              //   totalSteps: totalExercise,
              //   currentStep: backSet.indexOf(currentExercise),
              //   size: 36,
              //   selectedColor: Colors.black,
              //   unselectedColor: Colors.grey,
              //   customStep: (index, color, _) => color == Colors.black
              //       ? Container(
              //           color: color,
              //           child: Icon(
              //             Icons.check,
              //             color: Colors.white,
              //           ),
              //         )
              //       : Container(
              //           color: color,
              //           child: Icon(
              //             Icons.remove,
              //           ),
              //         ),
              // ),
              // Text(
              //   currentExercise.name,
              //   style: TextStyle(
              //     fontSize: 30,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                  TextSpan(
                                      text: backSet[index].exerciseNo,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 2, 175, 255))),
                                  TextSpan(text: ' of '),
                                  TextSpan(
                                      text: backSet.last.exerciseNo,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 2, 175, 255))),
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
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: CircularCountDownTimer(
                      key: null,
                      duration: _duration,
                      initialDuration: 0,
                      controller: _controller,
                      width: 80,
                      height: 80,
                      ringColor: Colors.grey,
                      // ringGradient: RadialGradient(
                      //   center: Alignment(-0.8, -0.6),
                      //   colors: [Color(0xFF9ab0ea), Color(0xFF1d55df)],
                      //   radius: 1.0,
                      // ),
                      fillColor: Colors.purple,
                      // fillColor: Colors.purpleAccent[100]!,
                      // fillGradient: RadialGradient(
                      //   center: Alignment(-0.8, -0.6),
                      //   colors: [Color(0xFF9ab0ea), Color(0xFF1d55df)],
                      //   radius: 1.0,
                      // ),
                      backgroundColor: Colors.purple,
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
                      autoStart: false,
                      onStart: () {
                        // exerciseAudioPlayer.open(Audio(backSet[index].sound));
                      },
                      onComplete: () {
                        calorie = calorie! + 5;
                        box.put('todayCalore', calorie);
                        setState(() {
                          index = index + 1;
                          currentExercise = backSet[index];
                          _controller.start();
                        });
                      },
                    ),
                  ),
                ],
              ),
              FlatButton(
                  minWidth: MediaQuery.of(context).size.width,
                  height: 50,
                  color: violet,
                  onPressed: () => _isPlaying
                      ? pause()
                      : _isPaused
                          ? resume()
                          : play(),
                  child: (_isPlaying)
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
            ],
          ),
        ),
      ),
    ]);
  }

  Future play() async {
    _controller.start();

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

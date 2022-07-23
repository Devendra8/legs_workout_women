import 'package:butt_workout/common/colours.dart';
import 'package:flutter/material.dart';
import 'package:butt_workout/data/back_tips.dart';
import 'package:butt_workout/screens/tips/Components/Back/body.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Back extends StatefulWidget {
  const Back({Key? key}) : super(key: key);

  @override
  State<Back> createState() => _BackState();
}

class _BackState extends State<Back> {
  final controller = PageController(initialPage: 0);
  int pageNo = 0;

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: Stack(
              children: [
                Container(
                  padding:
                      EdgeInsets.only(top: 70, right: 10, left: 10, bottom: 10),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  // margin: EdgeInsets.all(10),
                  child: PageView(
                    onPageChanged: (index) {
                      setState(() {
                        pageNo = index;
                      });
                      print('page ${index + 1}');
                    },
                    controller: controller,
                    children: backSet
                        .map((backSet) => Body(
                              backSet: backSet,
                            ))
                        .toList(),
                  ),
                ),
                Positioned(
                  bottom: 60,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: StepProgressIndicator(
                            totalSteps: backSet.length,
                            currentStep: pageNo + 1,
                            // widget.exerciseSet.exercises.indexOf(currentExercise),
                            selectedColor: Colors.red,
                            unselectedColor: Colors.yellow,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Positioned(
                //     top: 40,
                //     left: 20,
                //     child: Icon(
                //       Icons.cancel,
                //       color: Colors.black,
                //       size: 30,
                //     )),
                Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.5,
                  child: IconButton(
                    onPressed: () => controller.previousPage(
                        duration: Duration(seconds: 1),
                        curve: Curves.easeInOut),
                    icon: Icon(Icons.keyboard_arrow_left),
                    iconSize: 25,
                  ),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.5,
                  right: 0,
                  child: IconButton(
                    onPressed: () => controller.nextPage(
                        duration: Duration(seconds: 1),
                        curve: Curves.easeInOut),
                    icon: Icon(Icons.keyboard_arrow_right),
                    iconSize: 25,
                  ),
                )
              ],
            )));
  }
}

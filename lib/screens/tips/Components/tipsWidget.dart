import 'package:butt_workout/model/tips.dart';
import 'package:butt_workout/screens/tips/Components/body.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class TipsWidget extends StatefulWidget {
  final tips tipSet;

  const TipsWidget({
    required this.tipSet,
  });

  @override
  State<TipsWidget> createState() => _TipsWidgetState();
}

class _TipsWidgetState extends State<TipsWidget> {
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
                    children: widget.tipSet.tipsClass
                        .map((tipSet) => Body(tipSet: tipSet))
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
                            totalSteps: widget.tipSet.tipsClass.length,
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

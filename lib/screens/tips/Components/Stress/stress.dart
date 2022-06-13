import 'package:butt_workout/common/colours.dart';
import 'package:flutter/material.dart';
import 'package:butt_workout/data/stress_tips.dart';
import 'package:butt_workout/screens/tips/Components/Stress/body.dart';

class Stress extends StatefulWidget {
  const Stress({Key? key}) : super(key: key);

  @override
  State<Stress> createState() => _StressState();
}

class _StressState extends State<Stress> {
  final controller = PageController(initialPage: 0);

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(""),
          backgroundColor: violet,
          elevation: 0,
        ),
        body: Container(
            color: violet,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  child: SingleChildScrollView(
                    child: Column(
                      children: stressSet
                          .map((stressSet) => Body(
                                stressSet: stressSet,
                              ))
                          .toList(),
                    ),
                  ),
                ),
              ],
            )));
  }
}

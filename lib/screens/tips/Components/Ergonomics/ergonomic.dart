import 'package:butt_workout/common/colours.dart';
import 'package:flutter/material.dart';
import 'package:butt_workout/data/ergonomic_tips.dart';
import 'package:butt_workout/screens/tips/Components/Ergonomics/body.dart';

class Ergonomic extends StatefulWidget {
  const Ergonomic({Key? key}) : super(key: key);

  @override
  State<Ergonomic> createState() => _ErgonomicState();
}

class _ErgonomicState extends State<Ergonomic> {
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
                      children: ergonomicSet
                          .map((ergonomicSet) => Body(
                                ergonomicSet: ergonomicSet,
                              ))
                          .toList(),
                    ),
                  ),
                ),
              ],
            )));
  }
}

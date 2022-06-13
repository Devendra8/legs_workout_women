import 'package:butt_workout/common/colours.dart';
import 'package:flutter/material.dart';
import 'package:butt_workout/data/back_tips.dart';
import 'package:butt_workout/screens/tips/Components/Back/body.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Back extends StatefulWidget {
  const Back({Key? key}) : super(key: key);

  @override
  State<Back> createState() => _BackState();
}

class _BackState extends State<Back> {
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
                      children: backSet
                          .map((backSet) => Body(
                                backSet: backSet,
                              ))
                          .toList(),
                    ),
                  ),
                ),
              ],
            )));
  }
}

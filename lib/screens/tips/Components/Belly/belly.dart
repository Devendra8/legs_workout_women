import 'package:butt_workout/common/colours.dart';
import 'package:flutter/material.dart';
import 'package:butt_workout/data/belly_tips.dart';
import 'package:butt_workout/screens/tips/Components/Belly/body.dart';

class Belly extends StatefulWidget {
  const Belly({Key? key}) : super(key: key);

  @override
  State<Belly> createState() => _BellyState();
}

class _BellyState extends State<Belly> {
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
                      children: bellySet
                          .map((bellySet) => Body(
                                bellySet: bellySet,
                              ))
                          .toList(),
                    ),
                  ),
                ),
              ],
            )));
  }
}

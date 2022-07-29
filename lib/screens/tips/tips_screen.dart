import 'package:butt_workout/common/colours.dart';
import 'package:butt_workout/data/tips.dart';
import 'package:flutter/material.dart';
import 'package:butt_workout/screens/tips/body.dart';

class TipScreen extends StatelessWidget {
  const TipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: violet,
            child: Column(children: [
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    // border: Border.all(width: 2.0, color: skyBlue),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: tipsMuscle
                          .map(
                            (tips) => Body(tip: tips),
                          )
                          .toList(),
                    ),
                  ),
                ),
              ),
            ])));
  }
}

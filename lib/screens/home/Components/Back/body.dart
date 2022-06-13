import 'package:butt_workout/common/colours.dart';
import 'package:butt_workout/data/back/back_exercises.dart';
import 'package:flutter/material.dart';
import 'package:butt_workout/model/back/back_exercise.dart';

class Body extends StatelessWidget {
  final Exercise back;

  const Body({
    required this.back,
  });

  @override
  Widget build(BuildContext context) {
    return back.name != 'Rest'
        ? Container(
            height: 130,
            padding: const EdgeInsets.all(8.0),
            child: Container(
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
                        back.name,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: darkBlue),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          Text(
                            "${back.duration} Sec  ",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.green,
                            ),
                          ),
                          Text(
                            "${back.noOfReps} Reps  ",
                            style: TextStyle(fontSize: 14, color: Colors.green),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 120,
                    height: 130,
                    child: Image.asset(
                      back.animation,
                      fit: BoxFit.contain,
                    ),
                  )
                ],
              ),
            ),
          )
        : Container();
  }
}

import 'package:butt_workout/common/colours.dart';
import 'package:flutter/material.dart';
import 'package:butt_workout/data/ergonomic_tips.dart';
import 'package:butt_workout/model/tips.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Body extends StatefulWidget {
  final tips ergonomicSet;

  const Body({
    required this.ergonomicSet,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      // isFirst:  ? true : false,
      // isLast: widget.bellySet.isLast,
      indicatorStyle: IndicatorStyle(
        width: 20,
        color: Colors.purple,
        indicatorXY: 0.5,
        padding: EdgeInsets.all(8),
      ),
      alignment: TimelineAlign.start,
      endChild: Card(
        color: green,
        margin: EdgeInsets.only(top: 55),
        child: Stack(
          alignment: Alignment.topCenter,
          clipBehavior: Clip.none,
          children: [
            Container(
                padding: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  // border: Border.all(width: 2.0, color: Color(0xFF2f3b4c)),
                ),
                child: Column(
                  children: [
                    Flexible(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        // color: Colors.amber,
                        child: Text(
                          widget.ergonomicSet.title,
                          style: TextStyle(
                              fontSize: 28,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          widget.ergonomicSet.paragraph,
                          style: TextStyle(fontSize: 26, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                )),
            Positioned(
              top: -40,
              child: Container(
                height: 70,
                width: 70,
                // color: Colors.yellow,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.yellow),
              ),
            ),
            Positioned(
              top: -30,
              child: Container(
                height: 50,
                width: 50,
                // color: Colors.yellow,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

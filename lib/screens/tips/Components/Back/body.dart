import 'package:butt_workout/common/colours.dart';
import 'package:flutter/material.dart';
import 'package:butt_workout/data/back_tips.dart';
import 'package:butt_workout/model/tips.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Body extends StatefulWidget {
  final tips1 backSet;

  const Body({
    required this.backSet,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      isFirst: widget.backSet.isFirst,
      isLast: widget.backSet.isLast,
      indicatorStyle: IndicatorStyle(
        width: 20,
        color: widget.backSet.color,
        indicatorXY: 0.5,
        padding: EdgeInsets.all(8),
      ),
      alignment: TimelineAlign.start,
      endChild: Card(
        color: widget.backSet.color,
        margin: EdgeInsets.only(top: 55),
        child: Stack(
          alignment: Alignment.topCenter,
          // clipBehavior: Clip.none,
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(20),
                  // border: Border.all(width: 2.0, color: Color(0xFF2f3b4c)),
                  image: DecorationImage(
                    image: AssetImage("assets/tips/tipsBackground5.jpg"),
                    fit: BoxFit.cover,
                    // colorFilter: ColorFilter.mode(
                    //     Colors.black.withOpacity(0.3), BlendMode.color),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Container(
                        // alignment: Alignment.center,
                        // color: Colors.white,
                        width: 250,
                        padding: EdgeInsets.all(5),
                        // color: Colors.amber,
                        child: Text(
                          widget.backSet.title,
                          style: TextStyle(
                              fontSize: 24,
                              color: Color(0xFFe09c07),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      // color: Colors.white,
                      width: 250,
                      child: Divider(
                        color: skyBlue,
                        thickness: 4,
                      ),
                    ),
                    Flexible(
                      child: Container(
                        // color: Colors.white,
                        width: 250,
                        padding: EdgeInsets.all(5),
                        child: Text(
                          widget.backSet.paragraph,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            // Positioned(
            //   top: -40,
            //   child: Container(
            //     height: 100,
            //     width: 100,
            //     // color: Colors.yellow,
            //     decoration:
            //         BoxDecoration(shape: BoxShape.circle, color: Colors.yellow),
            //   ),
            // ),
            // Positioned(
            //   top: -30,
            //   child: Container(
            //     height: 80,
            //     width: 80,
            //     // color: Colors.yellow,
            //     decoration:
            //         BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            //   ),
            // ),
            // Positioned(
            //     top: -20,
            //     child: SizedBox(
            //       height: 25,
            //       width: 25,
            //       child: Text(
            //         widget.backSet.id,
            //         style: TextStyle(color: Colors.black, fontSize: 28),
            //       ),
            //     ))
          ],
        ),
      ),
    );
  }
}

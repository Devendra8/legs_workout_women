import 'package:flutter/material.dart';
import 'package:butt_workout/model/tips.dart';

class Body extends StatefulWidget {
  final tips headSet;

  const Body({
    required this.headSet,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 2.0, color: Color(0xFF2f3b4c)),
          color: Color(0xFF2f3b4c),
        ),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              color: Color(0xFFcaff01),
              child: Center(
                child: Text(
                  widget.headSet.title,
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Flexible(
              child: new Text(
                widget.headSet.paragraph,
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ],
        ));
  }
}

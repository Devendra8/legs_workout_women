import 'package:legs_workout_women/model/tips.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  final tips2 tipSet;

  const Body({
    required this.tipSet,
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
      ),
      child: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  widget.tipSet.title,
                  style: TextStyle(
                      fontSize: 28,
                      color: Color(0xFF746b75),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Image.asset(
            widget.tipSet.image,
            width: MediaQuery.of(context).size.width * 0.8,
            height: 280,
          ),
          Flexible(
            child: Text(
              widget.tipSet.paragraph,
              style: TextStyle(fontSize: 18, color: Colors.black45),
            ),
          ),
        ],
      ),
    );
  }
}

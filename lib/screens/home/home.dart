import 'package:legs_workout_women/common/colours.dart';
import 'package:flutter/material.dart';
import 'package:legs_workout_women/screens/home/body.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(color: violet, child: Body()));
  }
}

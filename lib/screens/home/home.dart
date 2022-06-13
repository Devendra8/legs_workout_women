import 'package:butt_workout/common/colours.dart';
import 'package:flutter/material.dart';
import 'package:butt_workout/screens/home/body.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(color: violet, child: Body()));
  }
}

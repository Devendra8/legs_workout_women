import 'package:butt_workout/common/colours.dart';
import 'package:flutter/material.dart';
import 'package:butt_workout/screens/tips/body.dart';

class TipScreen extends StatelessWidget {
  const TipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(color: violet, child: Body()));
  }
}

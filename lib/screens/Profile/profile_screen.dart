import 'package:legs_workout_women/common/colours.dart';
import 'package:flutter/material.dart';
import 'package:legs_workout_women/screens/profile/body.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(body: Container(color: violet, child: Body())),
    );
  }
}

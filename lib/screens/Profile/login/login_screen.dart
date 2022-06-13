import 'package:flutter/material.dart';
import 'package:butt_workout/screens/profile/login/body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   backgroundColor: Colors.transparent,
      //   elevation: 0.0,
      //   title: Text(
      //     "",
      //     style: TextStyle(
      //       fontSize: 23,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),
      body: Body(),
    );
  }
}

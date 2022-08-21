import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:legs_workout_women/common/box_decoration.dart';
import 'package:legs_workout_women/common/colours.dart';
import 'package:legs_workout_women/data/intermediate/intermediate_exercise_sets.dart';
import 'package:legs_workout_women/screens/home/components/intermediate/intermediate_widget.dart';

class Intermediate extends StatefulWidget {
  const Intermediate({Key? key}) : super(key: key);

  @override
  _IntermediateState createState() => _IntermediateState();
}

class _IntermediateState extends State<Intermediate> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: violet,
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: home_container_decoration,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.end,
                          // mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 15, top: 50),
                              child: Text(
                                'Intermediate ',
                                style: GoogleFonts.dancingScript(
                                    textStyle: TextStyle(
                                        fontSize: 32,
                                        letterSpacing: .5,
                                        color: Color.fromARGB(
                                            255, 246, 249, 252))),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              // padding: EdgeInsets.only(left: 15, bottom: 10),
                              child: Align(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/orangeStar.png",
                                      width: 30,
                                      height: 30,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Image.asset(
                                      "assets/orangeStar.png",
                                      width: 30,
                                      height: 30,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Image.asset(
                                      "assets/orangeStar.png",
                                      width: 30,
                                      height: 30,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Image.asset(
                      "assets/intermediate.png",
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  // border: Border.all(width: 2.0, color: skyBlue),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                    border: Border.all(width: 2.0, color: Color(0xFFFFFFFF)),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 100,
                            margin: EdgeInsets.only(left: 18, top: 4),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "About",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: skyBlue,
                                  thickness: 4,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 18, top: 2),
                          child: Text(
                            "30 days intermediate challenge is a bit difficult challenge which will help the body to get used to our some complex exercises. This exercises will help to lose most of hip fat and make it stronger.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(left: 18, right: 15),
                          child: Divider(
                            color: Colors.black12,
                            thickness: 2,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 180,
                            margin: EdgeInsets.only(
                              left: 18,
                              top: 5,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Begin Challenge",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: skyBlue,
                                  thickness: 4,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          children: exerciseIntermediateSets
                              .map(
                                (exerciseSet) => IntermediateWidget(
                                    exerciseSet: exerciseSet),
                              )
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

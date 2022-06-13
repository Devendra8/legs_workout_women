import 'package:butt_workout/common/colours.dart';
import 'package:butt_workout/main.dart';
import 'package:flutter/material.dart';
import 'package:butt_workout/screens/home/Components/Water/water_screen.dart';

class Water extends StatefulWidget {
  const Water({Key? key}) : super(key: key);

  @override
  State<Water> createState() => _WaterState();
}

class _WaterState extends State<Water> {
  int? waterTaken;
  int todayDate = DateTime.now().day;

  void initState() {
    super.initState();

    setState(() {
      waterTaken = box.get("Day$todayDate", defaultValue: 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>

          // Navigator.pop(
          //     context, MaterialPageRoute(builder: (context) => WaterScreen())),

          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => WaterScreen()))
              .then(
                (_) => setState(() {
                  waterTaken = box.get("Day$todayDate", defaultValue: 0);
                }),
              ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: 130,
        decoration: BoxDecoration(
          color: violet,
          borderRadius: BorderRadius.circular(10),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/menu.png',
                  width: 26,
                ),
                Stack(alignment: Alignment.center, children: [
                  SizedBox(
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.grey,
                      valueColor: AlwaysStoppedAnimation(
                          Color.fromARGB(255, 2, 175, 255)),
                      strokeWidth: 5,
                      value: waterTaken! / 8,
                    ),
                    height: 50.0,
                    width: 50.0,
                  ),
                  Positioned(
                      child: Image.asset(
                    'assets/glass-of-water.png',
                    width: 26,
                  ))
                ]),
                Image.asset(
                  'assets/add.png',
                  width: 26,
                ),
              ],
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: '$waterTaken ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 2, 175, 255))),
                  TextSpan(text: 'Out of '),
                  TextSpan(
                      text: '8 ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 2, 175, 255))),
                  TextSpan(text: 'Glasses'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

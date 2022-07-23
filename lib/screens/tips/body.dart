import 'package:butt_workout/common/box_decoration.dart';
import 'package:butt_workout/common/colours.dart';
import 'package:butt_workout/screens/tips/Face/face.dart';
import 'package:flutter/material.dart';
import 'package:butt_workout/screens/tips/Components/Back/back.dart';
import 'package:butt_workout/screens/tips/Components/Belly/belly.dart';
import 'package:butt_workout/screens/tips/Components/Ergonomics/ergonomic.dart';
import 'package:butt_workout/screens/tips/Components/Eye/eye.dart';
import 'package:butt_workout/screens/tips/Components/Head/head.dart';
import 'package:butt_workout/screens/tips/Components/Stress/stress.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // late Image myImage;
  // late Image myImage1;
  // late Image myImage2;
  // late Image myImage3;
  // late Image myImage4;

  // @override
  // void initState() {
  //   super.initState();
  //   myImage = Image.asset("assets/back.jpg");
  //   myImage1 = Image.asset("assets/belly.jpg");
  //   myImage2 = Image.asset("assets/eye.jpg");
  //   myImage3 = Image.asset("assets/stress.jpg");
  //   myImage4 = Image.asset("assets/head.jpg");
  // }

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   precacheImage(myImage.image, context);
  //   precacheImage(myImage1.image, context);
  //   precacheImage(myImage2.image, context);
  //   precacheImage(myImage3.image, context);
  //   precacheImage(myImage4.image, context);
  // }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 10,
      ),
      Expanded(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Container(
                //   padding: EdgeInsets.only(left: 15, top: 15),
                //   alignment: Alignment.centerLeft,
                //   child: RichText(
                //     text: TextSpan(
                //       style: TextStyle(
                //         fontSize: 16.0,
                //         color: Colors.black54,
                //       ),
                //       children: <TextSpan>[
                //         TextSpan(
                //           text: 'Specially Created',
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // Container(
                //   height: 210,
                //   margin: EdgeInsets.symmetric(vertical: 20),
                //   child: ListView(
                //     padding: EdgeInsets.only(top: 3, bottom: 3),
                //     scrollDirection: Axis.horizontal,
                //     children: <Widget>[
                //       Face(),
                //       SizedBox(
                //         width: 15,
                //       ),
                //       Face(),
                //       SizedBox(
                //         width: 15,
                //       ),
                //       // hard(),
                //     ],
                //   ),
                // ),
                // Container(
                //   padding: EdgeInsets.only(left: 15),
                //   alignment: Alignment.centerLeft,
                //   child: RichText(
                //     text: TextSpan(
                //       style: TextStyle(
                //         fontSize: 16.0,
                //         color: Colors.black54,
                //       ),
                //       children: <TextSpan>[
                //         TextSpan(
                //           text: 'Most Popular ',
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Back()));
                  },
                  child: Container(
                    // margin: EdgeInsets.all(15),
                    // margin: EdgeInsets.only(top: 5),
                    height: 110,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(right: 10, left: 10, bottom: 5),
                    child: Card(
                      shape: tips_card_border,
                      color: Color(0xFFa6d2ac),
                      elevation: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Back",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFF44774b),
                                fontWeight: FontWeight.bold),
                          ),
                          Image.asset("assets/tips/back.png"),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Eye()));
                  },
                  child: Container(
                    // margin: EdgeInsets.all(15),
                    height: 110,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(right: 10, left: 10, bottom: 5),
                    child: Card(
                      shape: tips_card_border,
                      color: Color(0xFF7bc0dd),
                      elevation: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Eye",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFF393b53),
                                fontWeight: FontWeight.bold),
                          ),
                          Image.asset("assets/tips/eye.png"),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Stress()));
                  },
                  child: Container(
                    // margin: EdgeInsets.all(15),
                    height: 110,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(right: 10, left: 10, bottom: 5),
                    child: Card(
                      shape: tips_card_border,
                      color: Color(0xffffe9b8),
                      elevation: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Stress",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFF7f6456),
                                fontWeight: FontWeight.bold),
                          ),
                          Image.asset("assets/tips/stress.png"),
                        ],
                      ),
                    ),
                  ),
                ),
                // GestureDetector(
                //   onTap: () {
                //     Navigator.of(context).push(
                //         MaterialPageRoute(builder: (context) => Ergonomic()));
                //   },
                //   child: Container(
                //     // margin: EdgeInsets.all(15),
                //   padding: EdgeInsets.only(right: 10, left: 10, bottom: 5),
                //    height: 110,
                //     width: MediaQuery.of(context).size.width,
                //     child: Card(
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(15.0),
                //       ),
                //       color: pink,
                //       elevation: 10,
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                //         children: [
                //           Text(
                //             "Fat Loss",
                //             style: TextStyle(fontSize: 20, color: Colors.white),
                //           ),
                //           Image.asset("assets/tips/diet.png"),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Belly()));
                  },
                  child: Container(
                    // margin: EdgeInsets.all(15),
                    padding: EdgeInsets.only(right: 10, left: 10, bottom: 5),
                    height: 110,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      shape: tips_card_border,
                      color: Color(0xFFfeb1ab),
                      elevation: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Belly",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFFb4474e),
                                fontWeight: FontWeight.bold),
                          ),
                          Image.asset("assets/tips/belly.png"),
                        ],
                      ),
                    ),
                  ),
                ),
                // GestureDetector(
                //   onTap: () {
                //     Navigator.of(context)
                //         .push(MaterialPageRoute(builder: (context) => Head()));
                //   },
                //   child: Container(
                //     margin: EdgeInsets.all(15),
                //     height: 120,
                //     width: MediaQuery.of(context).size.width,
                //     decoration: BoxDecoration(
                //       // image: DecorationImage(
                //       //     image: AssetImage("assets/head.jpg"),
                //       //     fit: BoxFit.cover,
                //       //     colorFilter: ColorFilter.mode(
                //       //         Colors.black.withOpacity(0.3), BlendMode.darken)),
                //       borderRadius: BorderRadius.circular(20),
                //       border: Border.all(width: 2.0, color: blue),
                //       color: blue,
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.grey,
                //           spreadRadius: 1,
                //           blurRadius: 3,
                //           offset: Offset(0, 1), // changes position of shadow
                //         ),
                //       ],
                //     ),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceAround,
                //       children: [
                //         Text(
                //           "Headache",
                //           style: TextStyle(fontSize: 20, color: Colors.white),
                //         ),
                //         Image.asset("assets/tips/headache.png"),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}

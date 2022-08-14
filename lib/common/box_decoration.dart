import 'package:legs_workout_women/common/colours.dart';
import 'package:flutter/material.dart';

BoxDecoration home_container_decoration = BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(5.0)),
  boxShadow: const <BoxShadow>[
    BoxShadow(
      color: violet,
      offset: Offset(1.0, 6.0),
      blurRadius: 7.0,
    ),
    BoxShadow(
      color: Colors.white60,
      offset: Offset(1.0, 6.0),
      blurRadius: 7.0,
    ),
  ],
  gradient: const LinearGradient(
      colors: <Color>[violet, Colors.white54],
      begin: FractionalOffset(0.4, 0.2),
      end: FractionalOffset(1.0, 1.0),
      stops: <double>[0.0, 1.0],
      tileMode: TileMode.clamp),
);

RoundedRectangleBorder tips_card_border = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(15.0),
);

BoxDecoration days_box_decoration = BoxDecoration(
  borderRadius: BorderRadius.circular(15),
  border: Border.all(width: 2.0, color: Color.fromARGB(255, 96, 99, 143)),
  color: Color.fromARGB(255, 96, 99, 143),
  boxShadow: [
    BoxShadow(
      color: Colors.black.withOpacity(0.2),
      spreadRadius: 1,
      blurRadius: 5,
      offset: Offset(0, 2), // changes position of shadow
    ),
  ],
);

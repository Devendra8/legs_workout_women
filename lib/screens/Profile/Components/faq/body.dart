import 'package:flutter/material.dart';
import 'package:butt_workout/model/faq/faq.dart';

class Body extends StatelessWidget {
  final FAQ faq;

  const Body({
    required this.faq,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Center(
        child: Text(
          faq.title,
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      children: [
        SingleChildScrollView(
          child: Text(
            faq.paragraph,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        )
      ],
    );
    // return Container(
    //   height: 70,
    //   padding: const EdgeInsets.all(15.0),
    //   margin: EdgeInsets.all(15),
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(20),
    //     border: Border.all(width: 2.0, color: Color(0xFFFFFFFF)),
    //     color: Color(0xFFFFFFFF),
    //     boxShadow: [
    //       BoxShadow(
    //         color: Colors.black.withOpacity(0.2),
    //         spreadRadius: 5,
    //         blurRadius: 7,
    //         offset: Offset(0, 2), // changes position of shadow
    //       ),
    //     ],
    //   ),
    //   child: buildText(context),
    // );
  }

  Widget buildText(BuildContext context) => ExpansionTile(
        title: Text(
          faq.title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        children: [
          SingleChildScrollView(
            child: Text(faq.paragraph),
          )
        ],
      );
}

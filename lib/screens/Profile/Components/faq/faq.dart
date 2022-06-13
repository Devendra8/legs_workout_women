import 'package:flutter/material.dart';
import 'package:butt_workout/data/faq/faq_sets.dart';
import 'package:butt_workout/screens/profile/Components/faq/body.dart';

class FAQ extends StatelessWidget {
  const FAQ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          "Frequently Asked Questions",
          style: TextStyle(
            color: Colors.black,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: faqSets
                .map(
                  (faqSets) => Body(faq: faqSets),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}

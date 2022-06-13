import 'package:flutter/material.dart';
import 'package:butt_workout/data/head_tips.dart';
import 'package:butt_workout/screens/tips/Components/Head/body.dart';

class Head extends StatefulWidget {
  const Head({Key? key}) : super(key: key);

  @override
  State<Head> createState() => _HeadState();
}

class _HeadState extends State<Head> {
  final controller = PageController(initialPage: 0);

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text(""),
        //   backgroundColor: Colors.white,
        //   elevation: 0,
        // ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  margin: EdgeInsets.all(10),
                  child: PageView(
                    onPageChanged: (index) {
                      print('page ${index + 1}');
                    },
                    controller: controller,
                    children: headSet
                        .map((headSet) => Body(
                              headSet: headSet,
                            ))
                        .toList(),
                  ),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.5,
                  child: IconButton(
                    onPressed: () => controller.previousPage(
                        duration: Duration(seconds: 1),
                        curve: Curves.easeInOut),
                    icon: Icon(Icons.keyboard_arrow_left),
                    iconSize: 25,
                  ),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.5,
                  right: 0,
                  child: IconButton(
                    onPressed: () => controller.nextPage(
                        duration: Duration(seconds: 1),
                        curve: Curves.easeInOut),
                    icon: Icon(Icons.keyboard_arrow_right),
                    iconSize: 25,
                  ),
                )
              ],
            )));
  }
}

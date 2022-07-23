import 'package:flutter/material.dart';
// import 'package:butt_workout/workout/tabs_screen.dart';

class Face extends StatelessWidget {
  const Face({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.of(context)
        //     .push(MaterialPageRoute(builder: (context) => TabsScreen()));
      },
      child: Container(
        margin: EdgeInsets.only(
          left: 10,
        ),
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xFF7bc0dd),
          // image: DecorationImage(
          //     image: AssetImage(
          //       "assets/tips/face.png",
          //     ),
          //     fit: BoxFit.fitWidth),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 155,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                // color: Color(0xFF7bc0dd),
                // image: DecorationImage(
                //     image: AssetImage(
                //       "assets/tips/face.png",
                //     ),
                //     fit: BoxFit.fitWidth),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Image.asset(
                "assets/tips/face.png",
                fit: BoxFit.fitWidth,
              ),
            ),
            Divider(
              thickness: 2,
              color: Colors.grey,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              color: Color.fromARGB(255, 159, 195, 211),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Tips for Glowing skin",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF393b53),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:butt_workout/screens/profile/Components/faq/faq.dart';
// import 'package:butt_workout/profile/Components/profile_pic.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          // ProfilePic(),
          SizedBox(
            height: 20,
          ),
          ProfileMenu(
            icon: "assets/account.svg",
            text: "My Account",
            press: () {
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (context) => LoginScreen()));
            },
          ),
          // ProfileMenu(
          //   icon: "assets/translation.svg",
          //   text: "Language Options",
          //   press: () {},
          // ),
          ProfileMenu(
            icon: "assets/star.svg",
            text: "Rate",
            press: () {},
          ),
          ProfileMenu(
            icon: "assets/feedback.svg",
            text: "Feedback",
            press: () {},
          ),
          // ProfileMenu(
          //   icon: "assets/question.svg",
          //   text: "Common Questions",
          //   press: () {},
          // ),
          ProfileMenu(
            icon: "assets/faq.svg",
            text: "FAQ",
            press: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => FAQ()));
            },
          ),
        ],
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: FlatButton(
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: Color(0xFFF5F6F9),
        onPressed: press,
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              width: 22,
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                text,
                style: TextStyle(fontSize: 16),
                // Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}

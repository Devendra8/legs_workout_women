import 'package:applovin_max/applovin_max.dart';
import 'package:butt_workout/common/colours.dart';
import 'package:butt_workout/main.dart';
import 'package:butt_workout/screens/profile/login/login_screen.dart';
import 'package:butt_workout/shared_preference/user_simple_preference.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:butt_workout/profile/Components/profile_pic.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String totalWater = '';
  String drinkWater = '';
  bool isSwitched = false;

  String name = '';
  String age = '';
  String height = '';
  String weight = '';

  @override
  void initState() {
    super.initState();
    totalWater = box.get('totalWater', defaultValue: '0');
    drinkWater = box.get('waterIntake', defaultValue: '0');

    name = UserSimplePreferences.getUsername() ?? '';
    age = UserSimplePreferences.getUserage() ?? '';
    height = UserSimplePreferences.getUserheight() ?? '';
    weight = UserSimplePreferences.getUserweight() ?? '';

    isSwitched = box.get('waterNotification', defaultValue: true);
    print(isSwitched);
  }

  @override
  void toggleSwitch(bool value) async {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        // for (int i = 0; i < getScheduleRecords.length; i++) {
        //   NotificationApi.scheduledNotification(
        //     hour: getScheduleRecords[i].hour,
        //     minutes: getScheduleRecords[i].min,
        //     id: getScheduleRecords[i].id,
        //   );
        // }
      });
      box.put("waterNotification", isSwitched);
      print(box.get('waterNotification'));
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        // NotificationApi.cancelAllNotifications();
      });
      box.put("waterNotification", isSwitched);
      print(box.get('waterNotification'));
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                children: [
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        // ProfilePic(),
                        Text(
                          "General Details",
                          style: TextStyle(fontSize: 20, color: Colors.black87),
                        ),
                        ProfileMenu(
                          icon: "assets/account.svg",
                          text: "My Account",
                          press: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LoginScreen()));
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
                          press: () {
                            AppLovinMAX.showMediationDebugger();
                          },
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
                        // ProfileMenu(
                        //   icon: "assets/faq.svg",
                        //   text: "FAQ",
                        //   press: () {
                        //     Navigator.of(context)
                        //         .push(MaterialPageRoute(builder: (context) => FAQ()));
                        //   },
                        // ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Text(
                  //   "Personal Detail",
                  //   style: TextStyle(fontSize: 20, color: Colors.black87),
                  // ),
                  // Container(
                  //   padding: const EdgeInsets.symmetric(
                  //       horizontal: 20, vertical: 10),
                  //   margin: const EdgeInsets.symmetric(
                  //       horizontal: 20, vertical: 10),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(20),
                  //     border: Border.all(width: 2.0, color: Color(0xFF2f3b4c)),
                  //     color: Color(0xFF2f3b4c),
                  //     boxShadow: [
                  //       BoxShadow(
                  //         color: Colors.grey,
                  //         spreadRadius: 1,
                  //         blurRadius: 3,
                  //         offset: Offset(0, 1), // changes position of shadow
                  //       ),
                  //     ],
                  //   ),
                  //   child: Column(
                  //     children: [
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Text(
                  //             "Name",
                  //             style: TextStyle(
                  //               fontSize: 18,
                  //             ),
                  //           ),
                  //           Text(
                  //             name,
                  //             style: TextStyle(
                  //               fontSize: 20,
                  //               color: Color(0xFFcaff01),
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //       SizedBox(
                  //         height: 10,
                  //       ),
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Text(
                  //             "Age",
                  //             style: TextStyle(
                  //               fontSize: 18,
                  //             ),
                  //           ),
                  //           Text(
                  //             age,
                  //             style: TextStyle(
                  //               fontSize: 20,
                  //               color: Color(0xFFcaff01),
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //       SizedBox(
                  //         height: 10,
                  //       ),
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Text(
                  //             "Total Water Intake",
                  //             style: TextStyle(
                  //               fontSize: 18,
                  //             ),
                  //           ),
                  //           Text(
                  //             box.get("totalWater", defaultValue: '0'),
                  //             style: TextStyle(
                  //               fontSize: 20,
                  //               color: Color(0xFFcaff01),
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //       SizedBox(
                  //         height: 10,
                  //       ),
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Text(
                  //             "Per Glass Water Intake",
                  //             style: TextStyle(
                  //               fontSize: 18,
                  //             ),
                  //           ),
                  //           Text(
                  //             box.get("waterIntake", defaultValue: '0'),
                  //             style: TextStyle(
                  //               fontSize: 20,
                  //               color: Color(0xFFcaff01),
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //       SizedBox(
                  //         height: 10,
                  //       ),
                  //       Center(
                  //         child: ElevatedButton(
                  //           style: ElevatedButton.styleFrom(
                  //             primary: Color(0xFFcaff01),
                  //             onSurface: Colors.transparent,
                  //             shadowColor: Colors.transparent,
                  //           ),
                  //           onPressed: () {
                  //             Navigator.of(context).pushReplacement(
                  //                 MaterialPageRoute(
                  //                     builder: (context) => LoginScreen()));
                  //           },
                  //           child: Text(
                  //             'Update',
                  //             style: TextStyle(color: Colors.black),
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Container(
                  //   child: Column(
                  //     children: [
                  //       Text(
                  //         "Water Intake",
                  //         style: TextStyle(fontSize: 20, color: Colors.black87),
                  //       ),
                  //       Container(
                  //         padding:
                  //             const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  //         child: TextFormField(
                  //           initialValue: totalWater,
                  //           decoration: InputDecoration(
                  //             prefixIcon: Icon(Icons.water),
                  //             // suffixIcon: Icon(Icons.arrow_forward_ios),
                  //             border: OutlineInputBorder(
                  //               borderRadius: BorderRadius.circular(30),
                  //             ),
                  //             floatingLabelBehavior: FloatingLabelBehavior.never,
                  //             filled: true,
                  //             fillColor: Color(0xFF2f3b4c),
                  //             hintText: 'Total Water Intake',
                  //           ),
                  //           onChanged: (totalWater) =>
                  //               setState(() => this.totalWater = totalWater),
                  //         ),
                  //       ),
                  //       Container(
                  //         padding:
                  //             const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  //         child: TextFormField(
                  //           initialValue: drinkWater,
                  //           decoration: InputDecoration(
                  //             prefixIcon: ImageIcon(
                  //               AssetImage("assets/appBar/drink-water.png"),
                  //               color: Color(0xFF3A5A98),
                  //             ),
                  //             // suffixIcon: Icon(Icons.arrow_forward_ios),
                  //             border: OutlineInputBorder(
                  //               borderRadius: BorderRadius.circular(30),
                  //             ),
                  //             floatingLabelBehavior: FloatingLabelBehavior.never,
                  //             filled: true,
                  //             fillColor: Color(0xFF2f3b4c),
                  //             hintText: 'Per Glass Intake',
                  //           ),
                  //           keyboardType: TextInputType.number,
                  //           onChanged: (drinkWater) =>
                  //               setState(() => this.drinkWater = drinkWater),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "Notification",
                          style: TextStyle(fontSize: 20, color: Colors.black87),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                                width: 2.0, color: Color(0xFF2f3b4c)),
                            color: Color(0xFF2f3b4c),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset:
                                    Offset(0, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Water Notification",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                              Transform.scale(
                                  scale: 1.5,
                                  child: Switch(
                                    onChanged: toggleSwitch,
                                    value: isSwitched,
                                    activeColor: Colors.green,
                                    activeTrackColor: Colors.greenAccent,
                                    inactiveThumbColor: Colors.red,
                                    inactiveTrackColor: Colors.orange,
                                  )),
                            ],
                          ),
                        ),
                        // Center(
                        //   child: ElevatedButton(
                        //     style: ElevatedButton.styleFrom(
                        //       primary: Color(0xFFcaff01),
                        //       onSurface: Colors.transparent,
                        //       shadowColor: Colors.transparent,
                        //     ),
                        //     onPressed: () {
                        //       box.put('totalWater', totalWater);
                        //       box.put('waterIntake', drinkWater);
                        //     },
                        //     child: Text(
                        //       'Update',
                        //       style: TextStyle(color: Colors.black),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
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
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: darkBlue,
        elevation: 10,
        child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          // color: Color(0xFF2f3b4c),
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
      ),
    );
  }
}

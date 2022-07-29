import 'package:butt_workout/common/colours.dart';
import 'package:butt_workout/screens/Profile/profile_screen.dart';
import 'package:flutter/material.dart';
// import 'package:butt_workout/App.dart';
import 'package:butt_workout/common/exit_screen.dart';
import 'package:butt_workout/main.dart';
import 'package:butt_workout/shared_preference/user_simple_preference.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
// import '../../../translations/locale_keys.g.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: <Color>[violet, violet],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(1.0, 1.0),
            stops: <double>[0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          // chartblock(context),
          InputScreen(),
        ],
      ),
    );
  }
}

Widget chartblock(BuildContext context) {
  return Container(
    alignment: Alignment.bottomCenter,
    height: MediaQuery.of(context).size.height * 0.2,
    width: MediaQuery.of(context).size.width,
    color: Colors.transparent,
    child: Text(
      "Buttocks Workout",
      style: GoogleFonts.dancingScript(
          textStyle: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.15,
              letterSpacing: .5,
              color: Color.fromARGB(255, 246, 249, 252))),
    ),
  );
}

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final formGlobalKey = GlobalKey<FormState>();

  String name = '';
  String age = '';
  // String height = '';
  // String weight = '';

  String totalWater = '';
  String drinkWater = '';
  String dropdownValue = 'English';

  @override
  void initState() {
    super.initState();

    name = UserSimplePreferences.getUsername() ?? '';
    age = UserSimplePreferences.getUserage() ?? '';
    // height = UserSimplePreferences.getUserheight() ?? '';
    // weight = UserSimplePreferences.getUserweight() ?? '';

    totalWater = box.get('totalWater', defaultValue: '0');
    drinkWater = box.get('waterIntake', defaultValue: '0');
    print("drinkWater" + drinkWater);
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        children: [
          Container(
            height: 100,
          ),
          Flexible(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Card(
                  elevation: 2.0,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: SizedBox(
                      // height: MediaQuery.of(context).size.height,
                      // height: 260,
                      width: 300.0,
                      height: 250.0,
                      // width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Wrap(
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 20.0,
                                  bottom: 20.0,
                                  left: 25.0,
                                  right: 25.0),
                              child: TextFormField(
                                initialValue: name,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  icon: Icon(
                                    FontAwesomeIcons.user,
                                    color: Colors.black,
                                  ),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                  filled: true,
                                  // fillColor: Color(0xFF2f3b4c),
                                  hintText: 'Name',
                                  hintStyle: TextStyle(
                                      fontFamily: 'WorkSansSemiBold',
                                      fontSize: 16.0,
                                      color: Colors.grey),
                                ),
                                style: const TextStyle(
                                    fontFamily: 'WorkSansSemiBold',
                                    fontSize: 16.0,
                                    color: Colors.black),
                                onChanged: (name) =>
                                    setState(() => this.name = name),
                              ),
                            ),

                            Container(
                              padding: const EdgeInsets.only(
                                  top: 20.0,
                                  bottom: 20.0,
                                  left: 25.0,
                                  right: 25.0),
                              child: TextFormField(
                                initialValue: age,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  icon: Image.asset(
                                    "assets/age.png",
                                    width: 30,
                                  ),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                  filled: true,
                                  // fillColor: Color(0xFF2f3b4c),
                                  hintText: 'Age',
                                  hintStyle: TextStyle(
                                      fontFamily: 'WorkSansSemiBold',
                                      fontSize: 16.0,
                                      color: Colors.grey),
                                ),
                                style: const TextStyle(
                                    fontFamily: 'WorkSansSemiBold',
                                    fontSize: 16.0,
                                    color: Colors.black),
                                onChanged: (age) =>
                                    setState(() => this.age = age),
                              ),
                            ),
                            // Container(
                            //   child: Column(
                            //     children: [
                            // Container(
                            //     padding: const EdgeInsets.symmetric(
                            //         horizontal: 35, vertical: 10),
                            //     child: Text(
                            //       "Total Daily Water Intake (ml): ",
                            //       style: TextStyle(fontSize: 18),
                            //     )),
                            // Container(
                            //   padding: const EdgeInsets.symmetric(
                            //       horizontal: 20, vertical: 10),
                            //   child: TextFormField(
                            //     initialValue: totalWater,
                            //     decoration: InputDecoration(
                            //       prefixIcon: Icon(Icons.water),
                            //       // suffixIcon: Icon(Icons.arrow_forward_ios),
                            //       border: OutlineInputBorder(
                            //         borderRadius: BorderRadius.circular(30),
                            //       ),
                            //       floatingLabelBehavior:
                            //           FloatingLabelBehavior.never,
                            //       filled: true,
                            //       fillColor: Color(0xFF2f3b4c),
                            //       hintText: 'Total Water Intake',
                            //     ),
                            //     onChanged: (totalWater) =>
                            //         setState(() => this.totalWater = totalWater),
                            //   ),
                            // ),
                            // Container(
                            //     padding: const EdgeInsets.symmetric(
                            //         horizontal: 35, vertical: 10),
                            //     child: Text(
                            //       "Total Water Intake in One Glass (ml) ",
                            //       style: TextStyle(fontSize: 18),
                            //     )),
                            // Container(
                            //   padding: const EdgeInsets.symmetric(
                            //       horizontal: 20, vertical: 10),
                            //   child: TextFormField(
                            //     initialValue: drinkWater,
                            //     decoration: InputDecoration(
                            //       prefixIcon: Icon(Icons.water),
                            //       // suffixIcon: Icon(Icons.arrow_forward_ios),
                            //       border: OutlineInputBorder(
                            //         borderRadius: BorderRadius.circular(30),
                            //       ),
                            //       floatingLabelBehavior:
                            //           FloatingLabelBehavior.never,
                            //       filled: true,
                            //       fillColor: Color(0xFF2f3b4c),
                            //       hintText: 'Total Water Intake',
                            //     ),
                            //     onChanged: (drinkWater) =>
                            //         setState(() => this.drinkWater = drinkWater),
                            //   ),
                            // ),
                            // Container(
                            //     padding: const EdgeInsets.symmetric(
                            //         horizontal: 35, vertical: 10),
                            //     child: Text(
                            //       "Language",
                            //       style: TextStyle(fontSize: 18),
                            //     )),
                            //     ],
                            //   ),
                            // ),
                          ],
                        ),
                      )),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 230.0),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: violet,
                        offset: Offset(1.0, 6.0),
                        blurRadius: 20.0,
                      ),
                      BoxShadow(
                        color: loginGradientEnd,
                        offset: Offset(1.0, 6.0),
                        blurRadius: 20.0,
                      ),
                    ],
                    gradient: LinearGradient(
                        colors: <Color>[violet, Colors.white54],
                        begin: FractionalOffset(0.2, 0.2),
                        end: FractionalOffset(1.0, 1.0),
                        stops: <double>[0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  child: MaterialButton(
                    highlightColor: Colors.transparent,
                    splashColor: loginGradientEnd,
                    //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 42.0),
                      child: Text(
                        'UPDATE',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontFamily: 'WorkSansBold'),
                      ),
                    ),
                    onPressed: () async {
                      if (name.isNotEmpty && age.isNotEmpty) {
                        await UserSimplePreferences.setUsername(name);
                        await UserSimplePreferences.setUserage(age);
                        //   // await UserSimplePreferences.setUserheight(height);
                        //   // await UserSimplePreferences.setUserweight(weight);
                        //   await UserSimplePreferences.Setbool(true);
                        //   box.put('totalWater', totalWater);
                        //   box.put('waterIntake', drinkWater);
                        box.put('loginScreen', true);
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (context) => BellyYoga()),
                          (route) => false,
                        );
                        // Navigator.of(context).pushReplacement(
                        //     MaterialPageRoute(builder: (context) => MyApp()));
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

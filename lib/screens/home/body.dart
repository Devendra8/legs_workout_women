import 'dart:math';

import 'package:applovin_max/applovin_max.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:legs_workout_women/common/box_decoration.dart';
import 'package:legs_workout_women/common/colours.dart';
import 'package:legs_workout_women/main.dart';
import 'package:legs_workout_women/screens/home/Components/Calorie/calorie.dart';
import 'package:legs_workout_women/screens/home/Components/Water/water.dart';
import 'package:legs_workout_women/screens/home/Components/advance/advance.dart';
import 'package:legs_workout_women/screens/home/Components/beginner/beginner.dart';
import 'package:legs_workout_women/screens/home/Components/intermediate/intermediate.dart';
import 'package:legs_workout_women/shared_preference/user_simple_preference.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String name = '';
  int todayDayNo = Jiffy(DateTime.now()).dayOfYear;
  int lastSavedDay = box.get('date', defaultValue: 0);
  final String _interstitial_ad_unit_id = "";
  bool isLoaded = false;
  bool isInterstitialAdLoaded = false;
  bool isBannerAdLoaded = false;

  double? CalorieBurn;
  int todayDate = DateTime.now().day;
  int firstAd = 0;

  @override
  void initState() {
    super.initState();

    if (lastSavedDay < todayDayNo) {
      box.put("date", todayDayNo);
      box.put("Day$todayDate", 0);
      box.put("CalorieDay$todayDate", 0.0);
    }
    name = UserSimplePreferences.getUsername() ?? '';

    initializeInterstitialAds();

    // if (firstAd == 0) {
    //   Future.delayed(Duration(milliseconds: 4000), () {
    //     if (isInterstitialAdLoaded) {
    //       AppLovinMAX.showInterstitial(_interstitial_ad_unit_id);
    //     }
    //   });
    //   firstAd = firstAd + 1;
    // }
  }

  var _interstitialRetryAttempt = 0;

  void initializeInterstitialAds() {
    AppLovinMAX.setInterstitialListener(InterstitialListener(
      onAdLoadedCallback: (ad) {
        // Interstitial ad is ready to be shown. AppLovinMAX.isInterstitialReady(_interstitial_ad_unit_id) will now return 'true'
        print('Interstitial ad loaded from ' + ad.networkName);
        // isInterstitialAdLoaded = true;
        // Reset retry attempt
        _interstitialRetryAttempt = 0;
      },
      onAdLoadFailedCallback: (adUnitId, error) {
        // Interstitial ad failed to load
        // We recommend retrying with exponentially higher delays up to a maximum delay (in this case 64 seconds)
        _interstitialRetryAttempt = _interstitialRetryAttempt + 1;

        int retryDelay = pow(2, min(6, _interstitialRetryAttempt)).toInt();

        print('Interstitial ad failed to load with code ' +
            error.code.toString() +
            ' - retrying in ' +
            retryDelay.toString() +
            's');

        Future.delayed(Duration(milliseconds: retryDelay * 1000), () {
          AppLovinMAX.loadInterstitial(_interstitial_ad_unit_id);
        });
      },
      onAdDisplayedCallback: (ad) {
        print('Interstitial onAdDisplayedCallback from ' + ad.networkName);
      },
      onAdDisplayFailedCallback: (ad, error) {
        print('Interstitial onAdDisplayFailedCallback from ' + ad.networkName);
      },
      onAdClickedCallback: (ad) {
        print('Interstitial onAdClickedCallback from ' + ad.networkName);
      },
      onAdHiddenCallback: (ad) {
        print('Interstitial onAdHiddenCallback from ' + ad.networkName);
      },
    ));

    // Load the first interstitial
    AppLovinMAX.loadInterstitial(_interstitial_ad_unit_id);
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
                  margin: EdgeInsets.only(left: 15, top: 15),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Hi $name",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 150,
                    margin: EdgeInsets.only(left: 15, top: 7),
                    child: Column(
                      children: const [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Welcome Back",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Divider(
                          color: skyBlue,
                          thickness: 4,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Water(),
                        Calorie(),
                      ]),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 18, right: 15),
                  child: Divider(
                    color: Colors.black12,
                    thickness: 2,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 100,
                    margin: EdgeInsets.only(left: 18, top: 4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Top Rated",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Divider(
                          color: skyBlue,
                          thickness: 4,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [Card()],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Beginner()));
                    if (isInterstitialAdLoaded) {
                      AppLovinMAX.showInterstitial(_interstitial_ad_unit_id);
                    }
                  },
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 110,
                        decoration: home_container_decoration,
                        // padding: EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              padding:
                                  EdgeInsets.only(top: 15, left: 8, bottom: 15),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text("Beginner",
                                      style: TextStyle(
                                          fontSize: 20.0, color: Colors.white)),
                                  Row(
                                    // mainAxisAlignment:
                                    //     MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        width: 80,
                                        decoration: days_box_decoration,
                                        child: Row(
                                          children: [
                                            Image.asset("assets/play.png",
                                                height: 15, width: 20),
                                            Text("30 Days"),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: 80,
                                        decoration: days_box_decoration,
                                        child: Row(
                                          children: [
                                            Image.asset("assets/exercises.png",
                                                height: 15, width: 20),
                                            Text("Easy"),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            // Column(
                            //   // mainAxisSize: MainAxisSize.min,
                            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                            //   children: <Widget>[
                            //     ListTile(
                            //       autofocus: mounted,
                            //       leading: Image.asset(
                            //         "assets/tips/back.png",
                            //       ),
                            //       title: Padding(
                            //         padding: EdgeInsets.only(bottom: 10.0),
                            //         child: Text('Beginner',
                            //             style: TextStyle(
                            //                 fontSize: 20.0, color: Colors.white)),
                            //       ),
                            //       subtitle: Row(
                            //         mainAxisAlignment:
                            //             MainAxisAlignment.spaceBetween,
                            //         children: const [
                            //           Text('14 Exercise',
                            //               style: TextStyle(
                            //                   fontSize: 16.0,
                            //                   color: Colors.white60)),
                            //           Text('Easy',
                            //               style: TextStyle(
                            //                   fontSize: 16.0,
                            //                   color: Colors.white60)),
                            //         ],
                            //       ),
                            //     ),
                            //   ],
                            // ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Image.asset("assets/beginner.png",
                                  fit: BoxFit.fitHeight,
                                  height: MediaQuery.of(context).size.height),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 80,
                            // decoration: days_box_decoration,
                            child: Row(
                              children: [
                                Image.asset("assets/free.png",
                                    height: 24, width: 28),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(
                            builder: (context) => Intermediate()))
                        .then(
                          (_) => setState(() {
                            CalorieBurn = box.get("CalorieDay$todayDate",
                                defaultValue: 0.0);
                          }),
                        );
                    if (isInterstitialAdLoaded) {
                      AppLovinMAX.showInterstitial(_interstitial_ad_unit_id);
                    }
                  },
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 110,
                        decoration: home_container_decoration,
                        // padding: EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              padding:
                                  EdgeInsets.only(top: 15, left: 8, bottom: 15),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text("Intermediate",
                                      style: TextStyle(
                                          fontSize: 20.0, color: Colors.white)),
                                  Row(
                                    // mainAxisAlignment:
                                    //     MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        width: 80,
                                        decoration: days_box_decoration,
                                        child: Row(
                                          children: [
                                            Image.asset("assets/play.png",
                                                height: 15, width: 20),
                                            Text("30 Days"),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: 80,
                                        decoration: days_box_decoration,
                                        child: Row(
                                          children: [
                                            Image.asset("assets/exercises.png",
                                                height: 15, width: 20),
                                            Text("Medium"),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Image.asset("assets/intermediate.png",
                                  fit: BoxFit.fill,
                                  height: MediaQuery.of(context).size.height),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 80,
                            // decoration: days_box_decoration,
                            child: Row(
                              children: [
                                Image.asset("assets/free.png",
                                    height: 24, width: 28),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Advance()));
                    if (isInterstitialAdLoaded) {
                      AppLovinMAX.showInterstitial(_interstitial_ad_unit_id);
                    }
                  },
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 110,

                        decoration: home_container_decoration,
                        // padding: EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              padding:
                                  EdgeInsets.only(top: 15, left: 8, bottom: 15),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text("Advanced",
                                      style: TextStyle(
                                          fontSize: 20.0, color: Colors.white)),
                                  Row(
                                    // mainAxisAlignment:
                                    //     MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        width: 80,
                                        decoration: days_box_decoration,
                                        child: Row(
                                          children: [
                                            Image.asset("assets/play.png",
                                                height: 15, width: 20),
                                            Text("30 Days"),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: 80,
                                        decoration: days_box_decoration,
                                        child: Row(
                                          children: [
                                            Image.asset("assets/exercises.png",
                                                height: 15, width: 20),
                                            Text("Hard"),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Image.asset("assets/advance.png",
                                  fit: BoxFit.fitHeight,
                                  height: MediaQuery.of(context).size.height),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 80,
                            // decoration: days_box_decoration,
                            child: Row(
                              children: [
                                Image.asset("assets/best-seller.png",
                                    height: 24, width: 28),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ))
      ],
    );
  }
}

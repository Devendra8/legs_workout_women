// import 'package:animated_splash_screen/animated_splash_screen.dart';
// ignore_for_file: import_of_legacy_library_into_null_safe

// import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:butt_workout/common/colours.dart';
import 'package:butt_workout/common/exit_screen.dart';
import 'package:butt_workout/data/notification_data.dart';
import 'package:butt_workout/notificationApi.dart';
import 'package:butt_workout/screens/Profile/login/login_screen.dart';
import 'package:butt_workout/screens/Profile/profile_screen.dart';
import 'package:butt_workout/screens/home/Components/Water/water_screen.dart';
import 'package:butt_workout/screens/home/home.dart';
import 'package:butt_workout/screens/tips/tips_screen.dart';
import 'package:butt_workout/shared_preference/progress_value.dart';
import 'package:butt_workout/shared_preference/user_simple_preference.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

late Box box;
bool? loginScreen;
bool? waterNotification;

FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await EasyLocalization.ensureInitialized();
  await UserSimplePreferences.init();
  await Hive.initFlutter();
  box = await Hive.openBox('box');
  Hive.registerAdapter(ProgressValueAdapter());
  Hive.registerAdapter(waterTrackerAdapter());
  Hive.registerAdapter(waterDayTrackerAdapter());
  Hive.registerAdapter(CalorieDayTrackerAdapter());
  NotificationApi.init(initScheduled: true);
  NotificationApi.init();

  // UserSimplePreferences.getBooleanValue("firstTimeOpen").then((value) => (() {
  //       isFirstTimeOpen = value;
  //     }));

  loginScreen = box.get('loginScreen', defaultValue: false);
  waterNotification = box.get('waterNotification', defaultValue: true);

  for (int i = 0; i < getScheduleRecords.length; i++) {
    NotificationApi.scheduledNotification(
      hour: getScheduleRecords[i].hour,
      minutes: getScheduleRecords[i].min,
      id: getScheduleRecords[i].id,
    );
  }

  if (waterNotification == false) {
    NotificationApi.cancelAllNotifications();
  }
  runApp(const MyApp());
}

ThemeData _darkTheme = ThemeData(
  accentColor: Colors.red,
  brightness: Brightness.dark,
  primaryColor: violet,
  // buttonTheme: ButtonThemeData(
  //   buttonColor: Color(0xFFcaff01),
  // ),
);

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Widget example1 = SplashScreenView(
      navigateRoute: loginScreen == true ? BellyYoga() : LoginScreen(),
      duration: 3000,
      imageSize: 500,
      imageSrc: "assets/splash/buttlogo.png",
      text: "Lose Belly Fat - Abs Workout",
      textType: TextType.NormalText,
      textStyle: TextStyle(
        fontSize: 40.0,
      ),
      colors: [
        Colors.purple,
        Colors.blue,
        Colors.yellow,
        Colors.red,
      ],
      backgroundColor: Color(0xFF192751),
      pageRouteTransition: PageRouteTransition.SlideTransition,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(fontFamily: 'Bahnschrift'),
      theme: _darkTheme,
      title: 'Office Workout',
      home: example1,
    );
  }
}

class BellyYoga extends StatefulWidget {
  const BellyYoga({Key? key}) : super(key: key);

  @override
  State<BellyYoga> createState() => _BellyYogaState();
}

class _BellyYogaState extends State<BellyYoga> {
  void initState() {
    super.initState();

    setState(() {
      listenNotifications();
    });
  }

  void listenNotifications() =>
      NotificationApi.onNotifications.stream.listen(onClickedNotification);

  void onClickedNotification(String? payload) => {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => WaterScreen()),
        )
      };

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(150, 150), //width and height
            child: AppBar(
              title: Text("Lose Belly Fat"),
              elevation: 0,
              backgroundColor: violet,
              // backgroundColor: Color(0xFFFFFFFF),
              bottom: TabBar(
                  labelPadding: EdgeInsets.all(10),
                  unselectedLabelColor: Colors.redAccent,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                      gradient: LinearGradient(colors: const [
                        Colors.redAccent,
                        Colors.orangeAccent
                      ]),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.redAccent),
                  tabs: [
                    Tab(
                      icon: Image.asset(
                        "assets/appBar/house.png",
                        height: 70,
                        width: 70,
                      ),
                    ),
                    // Tab(
                    //   icon: Image.asset(
                    //     "assets/appBar/weight.png",
                    //     height: 70,
                    //     width: 70,
                    //   ),
                    // ),
                    Tab(
                      icon: Image.asset(
                        "assets/appBar/tips.png",
                        height: 70,
                        width: 70,
                      ),
                    ),
                    Tab(
                      icon: Image.asset(
                        "assets/appBar/profile.png",
                        height: 70,
                        width: 70,
                      ),
                    )
                  ]),
              toolbarHeight: 90,
            ),
          ),
          body: TabBarView(children: [Home(), TipScreen(), Profile()]),
        ),
      ),
    );
  }
}

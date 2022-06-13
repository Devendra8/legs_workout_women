import 'package:butt_workout/common/colours.dart';
import 'package:butt_workout/main.dart';
import 'package:butt_workout/screens/home/Components/Water/water_chart1.dart';
import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:jiffy/jiffy.dart';
import 'package:table_calendar/table_calendar.dart';

class WaterScreen extends StatefulWidget {
  const WaterScreen({Key? key}) : super(key: key);

  @override
  State<WaterScreen> createState() => _WaterScreenState();
}

class _WaterScreenState extends State<WaterScreen> {
  DatePickerController _controller = DatePickerController();

  DateTime? _selectedValue;
  DateTime now = DateTime.now();

  // CalendarFormat _calendarFormat = CalendarFormat.week;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  var a = Jiffy().yMMMMd;
  int todayDate = DateTime.now().day;
  int? selectedDayValue;
  int? waterTaken;

  int todayWaterTaken = 0;

  var tip, len = '';

  var data = [
    'Wash your face with hot water 2-3 times every week and rub gently with finger tips for smooth skin',
    'Drink at least 8 glass of water every day',
    'Daily wash your face before going to bed',
    'Use some moisturizer before sleep',
    'For gentle care of your skin use baby soap and shampoo',
    'Smoking leads to unwanted pimples and wrinkles on your pretty face',
    'Wash your face with cold water after you wake up',
    'Eat healthy food, try to eat less fried food and food with too much oil',
    'Wash your pillow and blanket frequently',
    'Intake right amount of vitamin C for less wrinkles',
    'Get at least 7-8 hours of sleep daily',
    'Eat chocolates for smooth and glowing skin',
    'Apply mashed fruits to your face, Your face also needs nutrition',
    "Exercise daily, Skipping once in a while is fine but don't make it your habit",
    "Keep your stomach clean, it helps to get a pimple free face",
    "It is good to get sun bath but only if it is a rising sun",
    "Always remember to remove makeup and wear it for short time",
  ];

  @override
  void initState() {
    super.initState();

    _selectedValue = DateTime(
      now.year,
      now.month,
      now.day,
    );

    tip = (data..shuffle()).first;
    len = data.length.toString();

    // todayWaterTaken = box.get('$')
    setState(() {
      waterTaken = box.get("Day$todayDate", defaultValue: 0);
    });
  }

  String WaterTextLine(waterTaken) {
    switch (waterTaken) {
      case 0:
        return 'See you again in 60 minutes';
      case 1:
        return 'Your next glass of water is due in 60 minutes';
      case 2:
        return 'Hope to see you in 60 minutes for the next glass';
      case 3:
        return 'See you again in 60 minutes';
      case 4:
        return 'Your next glass of water is due in 60 minutes';
      case 5:
        return 'Hope to see you in 60 minutes for the next glass';
      case 6:
        return 'Get your next glass in 60 minutes';
      case 7:
        return 'Great Work on meeting your target';
      default:
        return 'Keep Drinking';
    }
  }

  String WaterTextHeader(waterTaken) {
    switch (waterTaken) {
      case 0:
        return 'Drink';
      case 1:
        return 'You Rock!';
      case 2:
        return 'Awesome!';
      case 3:
        return 'Bottoms up!';
      case 4:
        return 'Half-way there!';
      case 5:
        return 'Keep going!';
      case 6:
        return 'Rock star!';
      case 7:
        return 'You made it!';
      default:
        return 'Keep Drinking';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Align(
            alignment: Alignment.topRight,
            child: Text(a.toString()),
          ),
          backgroundColor: violet,
          elevation: 0,
        ),
        body: Container(
          color: violet,
          child: Column(
            children: [
              TableCalendar(
                firstDay: DateTime.now().subtract(Duration(days: 29)),
                lastDay: DateTime.now(),
                focusedDay: _focusedDay,
                calendarFormat: CalendarFormat.week,
                startingDayOfWeek: StartingDayOfWeek.monday,
                headerStyle: HeaderStyle(
                    titleCentered: true,
                    formatButtonVisible: false,
                    titleTextStyle:
                        TextStyle(color: Colors.white, fontSize: 16)),
                calendarStyle: CalendarStyle(
                    weekendTextStyle: TextStyle(color: Colors.white)),
                selectedDayPredicate: (day) {
                  // Use `selectedDayPredicate` to determine which day is currently selected.
                  // If this returns true, then `day` will be marked as selected.

                  // Using `isSameDay` is recommended to disregard
                  // the time-part of compared DateTime objects.
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  if (!isSameDay(_selectedDay, selectedDay)) {
                    // Call `setState()` when updating the selected day
                    setState(() {
                      _selectedDay = selectedDay;
                      print(selectedDay.day);
                      selectedDayValue = selectedDay.day;
                      print(selectedDayValue);
                      _focusedDay = focusedDay;
                      waterTaken =
                          box.get("Day$selectedDayValue", defaultValue: 0);
                    });
                  }
                },
                // onFormatChanged: (format) {
                //   if (_calendarFormat != format) {
                //     // Call `setState()` when updating calendar format
                //     setState(() {
                //       _calendarFormat = format;
                //     });
                //   }
                // },
                onPageChanged: (focusedDay) {
                  // No need to call `setState()` here
                  _focusedDay = focusedDay;
                },
              ),
              SizedBox(
                height: 5,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: waterTaken == 0
                                  ? null
                                  : () => setState(() {
                                        waterTaken = waterTaken! - 1;
                                        waterAddHiveDatabase(
                                            selectedDayValue, waterTaken);
                                        // box.put(key, waterTaken);
                                      }),
                              child: Image.asset(
                                'assets/menu.png',
                                width: 40,
                              ),
                            ),
                            SizedBox(
                              width: 80,
                              height: 80,
                              child: LiquidCircularProgressIndicator(
                                value: waterTaken! / 8,
                                valueColor: AlwaysStoppedAnimation(Colors.blue),
                                backgroundColor: Color(0xFF55c9f4),
                                borderColor: Colors.transparent,
                                borderWidth: 5.0,
                                direction: Axis.vertical,
                                center: Image.asset(
                                  'assets/glass-of-water.png',
                                  width: 40,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => setState(() {
                                waterTaken = waterTaken! + 1;
                                // box.put(key, waterTaken);
                                waterAddHiveDatabase(
                                    selectedDayValue, waterTaken);
                              }),
                              child: Image.asset(
                                'assets/add.png',
                                width: 40,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: LinearProgressIndicator(
                            value: waterTaken! / 8,
                            minHeight: 5,
                            color: Colors.amber,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(children: [
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: '$waterTaken ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 2, 175, 255))),
                                TextSpan(text: 'Out of '),
                                TextSpan(
                                    text: '8 ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 2, 175, 255))),
                                TextSpan(text: 'Glasses'),
                              ],
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                WaterTextHeader(waterTaken),
                                style: TextStyle(
                                    fontSize: 22, color: Colors.amberAccent),
                              )),
                          Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text(WaterTextLine(waterTaken)))
                        ]),
                        Divider(
                          color: Colors.black,
                          thickness: 2,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 100,
                            padding: EdgeInsets.only(left: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Today's Tip",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
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
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              Container(
                                  padding: EdgeInsets.only(left: 8),
                                  child:
                                      Text(tip, style: TextStyle(fontSize: 14)))
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 2,
                        ),
                        BarChartSample1(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  void waterAddHiveDatabase(selectedDayValue, waterTaken) {
    switch (selectedDayValue) {
      case 1:
        box.put('Day$selectedDayValue', waterTaken);
        break;
      case 2:
        box.put('Day$selectedDayValue', waterTaken);
        break;
      case 3:
        box.put('Day$selectedDayValue', waterTaken);
        break;
      case 4:
        box.put('Day$selectedDayValue', waterTaken);
        break;
      case 5:
        box.put('Day$selectedDayValue', waterTaken);
        break;
      case 6:
        box.put('Day$selectedDayValue', waterTaken);
        break;
      case 7:
        box.put('Day$selectedDayValue', waterTaken);
        break;
      case 8:
        box.put('Day$selectedDayValue', waterTaken);
        break;
      case 9:
        box.put('Day$selectedDayValue', waterTaken);
        break;
      case 10:
        box.put('Day$selectedDayValue', waterTaken);
        break;
      case 11:
        box.put('Day$selectedDayValue', waterTaken);
        break;
      case 12:
        box.put('Day$selectedDayValue', waterTaken);
        break;
      case 13:
        box.put('Day$selectedDayValue', waterTaken);
        break;
      case 14:
        box.put('Day$selectedDayValue', waterTaken);
        break;
      case 15:
        box.put('Day$selectedDayValue', waterTaken);
        break;
      case 16:
        box.put('Day$selectedDayValue', waterTaken);
        break;
      case 17:
        box.put('Day$selectedDayValue', waterTaken);
        break;
      case 18:
        box.put('Day$selectedDayValue', waterTaken);
        break;
      case 19:
        box.put('Day$selectedDayValue', waterTaken);
        break;
      case 20:
        box.put('Day$selectedDayValue', waterTaken);
        break;
      case 21:
        box.put('Day$selectedDayValue', waterTaken);
        break;
      case 22:
        box.put('Day$selectedDayValue', waterTaken);
        break;
      case 23:
        box.put('Day$selectedDayValue', waterTaken);
        break;
      case 24:
        box.put('Day$selectedDayValue', waterTaken);
        break;
      case 25:
        box.put('Day$selectedDayValue', waterTaken);
        break;
      case 26:
        box.put('Day$selectedDayValue', waterTaken);
        break;
      case 27:
        box.put('Day$selectedDayValue', waterTaken);
        break;
      case 28:
        box.put('Day$selectedDayValue', waterTaken);
        break;
      case 29:
        box.put('Day$selectedDayValue', waterTaken);
        break;
      case 30:
        box.put('Day$selectedDayValue', waterTaken);
        break;
    }
  }

  void dispose() {
    super.dispose();
  }
}

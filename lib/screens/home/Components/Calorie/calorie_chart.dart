import 'dart:async';
import 'dart:math';
import 'package:legs_workout_women/common/colours.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:legs_workout_women/main.dart';

class BarChartSample1 extends StatefulWidget {
  const BarChartSample1({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => BarChartSample1State();
}

class BarChartSample1State extends State<BarChartSample1> {
  // final Color barBackgroundColor = const Color(0xff72d8bf);
  final Color barBackgroundColor = violet;

  int touchedIndex = -1;
  String? month;
  String? previousMonth;

  double latestDay =
      box.get("CalorieDay${DateTime.now().day}", defaultValue: 0.0);
  double latest_1Day = box.get(
      "CalorieDay${DateTime.now().subtract(Duration(days: 1)).day}",
      defaultValue: 0.0);
  double latest_2Day = box.get(
      "CalorieDay${DateTime.now().subtract(Duration(days: 2)).day}",
      defaultValue: 0.0);
  double latest_3Day = box.get(
      "CalorieDay${DateTime.now().subtract(Duration(days: 3)).day}",
      defaultValue: 0.0);
  double latest_4Day = box.get(
      "CalorieDay${DateTime.now().subtract(Duration(days: 4)).day}",
      defaultValue: 0.0);
  double latest_5Day = box.get(
      "CalorieDay${DateTime.now().subtract(Duration(days: 5)).day}",
      defaultValue: 0.0);
  double latest_6Day = box.get(
      "CalorieDay${DateTime.now().subtract(Duration(days: 6)).day}",
      defaultValue: 0.0);
  double latest_7Day = box.get(
      "CalorieDay${DateTime.now().subtract(Duration(days: 7)).day}",
      defaultValue: 0.0);
  double latest_8Day = box.get(
      "CalorieDay${DateTime.now().subtract(Duration(days: 8)).day}",
      defaultValue: 0.0);
  double latest_9Day = box.get(
      "CalorieDay${DateTime.now().subtract(Duration(days: 9)).day}",
      defaultValue: 0.0);
  double latest_10Day = box.get(
      "CalorieDay${DateTime.now().subtract(Duration(days: 10)).day}",
      defaultValue: 0.0);
  double latest_11Day = box.get(
      "CalorieDay${DateTime.now().subtract(Duration(days: 11)).day}",
      defaultValue: 0.0);
  double latest_12Day = box.get(
      "CalorieDay${DateTime.now().subtract(Duration(days: 12)).day}",
      defaultValue: 0.0);
  double latest_13Day = box.get(
      "CalorieDay${DateTime.now().subtract(Duration(days: 13)).day}",
      defaultValue: 0.0);
  double latest_14Day = box.get(
      "CalorieDay${DateTime.now().subtract(Duration(days: 14)).day}",
      defaultValue: 0.0);
  double latest_15Day = box.get(
      "CalorieDay${DateTime.now().subtract(Duration(days: 15)).day}",
      defaultValue: 0.0);
  double latest_16Day = box.get(
      "CalorieDay${DateTime.now().subtract(Duration(days: 16)).day}",
      defaultValue: 0.0);
  double latest_17Day = box.get(
      "CalorieDay${DateTime.now().subtract(Duration(days: 17)).day}",
      defaultValue: 0.0);
  double latest_18Day = box.get(
      "CalorieDay${DateTime.now().subtract(Duration(days: 18)).day}",
      defaultValue: 0.0);
  double latest_19Day = box.get(
      "CalorieDay${DateTime.now().subtract(Duration(days: 19)).day}",
      defaultValue: 0.0);
  double latest_20Day = box.get(
      "CalorieDay${DateTime.now().subtract(Duration(days: 20)).day}",
      defaultValue: 0.0);
  double latest_21Day = box.get(
      "CalorieDay${DateTime.now().subtract(Duration(days: 21)).day}",
      defaultValue: 0.0);
  double latest_22Day = box.get(
      "CalorieDay${DateTime.now().subtract(Duration(days: 22)).day}",
      defaultValue: 0.0);
  double latest_23Day = box.get(
      "CalorieDay${DateTime.now().subtract(Duration(days: 23)).day}",
      defaultValue: 0.0);
  double latest_24Day = box.get(
      "CalorieDay${DateTime.now().subtract(Duration(days: 24)).day}",
      defaultValue: 0.0);
  double latest_25Day = box.get(
      "CalorieDay${DateTime.now().subtract(Duration(days: 25)).day}",
      defaultValue: 0.0);
  double latest_26Day = box.get(
      "CalorieDay${DateTime.now().subtract(Duration(days: 26)).day}",
      defaultValue: 0.0);
  double latest_27Day = box.get(
      "CalorieDay${DateTime.now().subtract(Duration(days: 27)).day}",
      defaultValue: 0.0);
  double latest_28Day = box.get(
      "CalorieDay${DateTime.now().subtract(Duration(days: 28)).day}",
      defaultValue: 0.0);
  double latest_29Day = box.get(
      "CalorieDay${DateTime.now().subtract(Duration(days: 29)).day}",
      defaultValue: 0.0);
  // int latest_30Day = box.get(
  //     "CalorieDay${DateTime.now().subtract(Duration(days: 30)).day}",
  //     defaultValue: 0);

  // double? tuesday = box.get("tuesday", defaultValue: 0.0);
  // double? wednesday = box.get("wednesday", defaultValue: 0.0);
  // double? thursday = box.get("thursday", defaultValue: 0.0);
  // double? friday1 = box.get("friday1", defaultValue: 0.0);
  // double? saturday = box.get("saturday", defaultValue: 0.0);

  // int tuesday = box.get("tuesday", defaultValue: 0);

  void initState() {
    super.initState();
    // monday = box.get("monday", defaultValue: 0.0);
    // tuesday = box.get("tuesday", defaultValue: 0.0);
    // wednesday = box.get("wednesday", defaultValue: 0.0);
    // thursday = box.get("thursday", defaultValue: 0.0);
    // friday = box.get("friday", defaultValue: 0.0);
    // // print(friday);
    // saturday = box.get("saturday", defaultValue: 0.0);
    month = getMonthNameString(DateTime.now().month.toString());
    previousMonth = getMonthNameString(
        DateTime.now().subtract(Duration(days: 30)).month.toString());
  }

  String getMonthNameString(String month) {
    switch (month) {
      case '1':
        return 'January';
      case '2':
        return 'Februrary';
      case '3':
        return 'March';
      case '4':
        return 'April';
      case '5':
        return 'May';
      case '6':
        return 'June';
      case '7':
        return 'July';
      case '8':
        return 'August';
      case '9':
        return 'September';
      case '10':
        return 'October';
      case '11':
        return 'November';
      case '12':
        return 'December';

      default:
        return 'Err';
    }
  }

  String getMonthString(String Date) {
    switch (Date) {
      case '1':
        return 'Monday';
      case '2':
        return 'Tuesday';
      case '3':
        return 'Wednesday';
      case '4':
        return 'Thursday';
      case '5':
        return 'Friday';
      case '6':
        return 'Saturday';
      case '7':
        return 'Sunday';

      default:
        return 'Err';
    }
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: Card(
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        // color: const Color(0xFF2f3b4c),
        color: violet,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(
              height: 8,
            ),
            Container(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Calorie",
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    previousMonth! + " - " + month!,
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4,
            ),
            // Text(
            //   'Weekly Activity',
            //   style: TextStyle(
            //       color: Color(0xffFFFFFF),
            //       fontSize: 16,
            //       fontWeight: FontWeight.bold),
            // ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: BarChart(
                mainBarData(),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }

  BarChartGroupData makeGroupData(
    int x,
    double y, {
    bool isTouched = false,
    Color barColor = Colors.blue,
    double width = 7,
    List<int> showTooltips = const [],
  }) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: isTouched ? y + 1 : y,
          color: isTouched ? Colors.yellow : barColor,
          width: width,
          borderSide: isTouched
              ? BorderSide(color: Colors.yellow, width: 1)
              : const BorderSide(color: Colors.white, width: 0),
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            toY: 8,
            color: barBackgroundColor,
          ),
        ),
      ],
      showingTooltipIndicators: showTooltips,
    );
  }

  List<BarChartGroupData> showingGroups() => List.generate(30, (i) {
        switch (i) {
          case 0:
            return makeGroupData(0, latest_29Day.ceilToDouble(),
                isTouched: i == touchedIndex);
          case 1:
            return makeGroupData(1, latest_28Day.ceilToDouble(),
                isTouched: i == touchedIndex);
          // return makeGroupData(0, monday!, isTouched: i == touchedIndex);
          case 2:
            return makeGroupData(2, latest_27Day.ceilToDouble(),
                isTouched: i == touchedIndex);
          case 3:
            return makeGroupData(3, latest_26Day.ceilToDouble(),
                isTouched: i == touchedIndex);
          case 4:
            return makeGroupData(4, latest_25Day.ceilToDouble(),
                isTouched: i == touchedIndex);
          case 5:
            return makeGroupData(5, latest_24Day.ceilToDouble(),
                isTouched: i == touchedIndex);
          case 6:
            return makeGroupData(6, latest_23Day.ceilToDouble(),
                isTouched: i == touchedIndex);
          case 7:
            return makeGroupData(7, latest_22Day.ceilToDouble(),
                isTouched: i == touchedIndex);
          case 8:
            return makeGroupData(8, latest_21Day.ceilToDouble(),
                isTouched: i == touchedIndex);
          case 9:
            return makeGroupData(9, latest_20Day.ceilToDouble(),
                isTouched: i == touchedIndex);
          case 10:
            return makeGroupData(10, latest_19Day.ceilToDouble(),
                isTouched: i == touchedIndex);
          case 11:
            return makeGroupData(11, latest_18Day.ceilToDouble(),
                isTouched: i == touchedIndex);
          case 12:
            return makeGroupData(12, latest_17Day.ceilToDouble(),
                isTouched: i == touchedIndex);
          case 13:
            return makeGroupData(13, latest_16Day.ceilToDouble(),
                isTouched: i == touchedIndex);
          case 14:
            return makeGroupData(14, latest_15Day.ceilToDouble(),
                isTouched: i == touchedIndex);
          case 15:
            return makeGroupData(15, latest_14Day.ceilToDouble(),
                isTouched: i == touchedIndex);
          case 16:
            return makeGroupData(16, latest_13Day.ceilToDouble(),
                isTouched: i == touchedIndex);
          case 17:
            return makeGroupData(17, latest_12Day.ceilToDouble(),
                isTouched: i == touchedIndex);
          case 18:
            return makeGroupData(18, latest_11Day.ceilToDouble(),
                isTouched: i == touchedIndex);
          case 19:
            return makeGroupData(19, latest_10Day.ceilToDouble(),
                isTouched: i == touchedIndex);
          case 20:
            return makeGroupData(20, latest_9Day.ceilToDouble(),
                isTouched: i == touchedIndex);
          case 21:
            return makeGroupData(21, latest_8Day.ceilToDouble(),
                isTouched: i == touchedIndex);
          case 22:
            return makeGroupData(22, latest_7Day.ceilToDouble(),
                isTouched: i == touchedIndex);
          case 23:
            return makeGroupData(23, latest_6Day.ceilToDouble(),
                isTouched: i == touchedIndex);
          case 24:
            return makeGroupData(24, latest_5Day.ceilToDouble(),
                isTouched: i == touchedIndex);
          case 25:
            return makeGroupData(25, latest_4Day.ceilToDouble(),
                isTouched: i == touchedIndex);
          case 26:
            return makeGroupData(26, latest_3Day.ceilToDouble(),
                isTouched: i == touchedIndex);
          case 27:
            return makeGroupData(27, latest_2Day.ceilToDouble(),
                isTouched: i == touchedIndex);
          case 28:
            return makeGroupData(28, latest_1Day.ceilToDouble(),
                isTouched: i == touchedIndex);
          case 29:
            return makeGroupData(29, latestDay.ceilToDouble(),
                // box.get("Day${DateTime.now().day.toDouble()}", defaultValue: 0),
                isTouched: i == touchedIndex);

          default:
            return throw Error();
        }
      });

  BarChartData mainBarData() {
    return BarChartData(
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
            tooltipBgColor: Colors.blueGrey,
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              String weekDay;
              switch (group.x.toInt()) {
                case 0:
                  weekDay = getMonthString(DateTime.now()
                      .subtract(Duration(days: 29))
                      .weekday
                      .toString());
                  break;
                case 1:
                  weekDay = getMonthString(DateTime.now()
                      .subtract(Duration(days: 28))
                      .weekday
                      .toString());
                  break;
                case 2:
                  weekDay = getMonthString(DateTime.now()
                      .subtract(Duration(days: 27))
                      .weekday
                      .toString());
                  break;
                case 3:
                  weekDay = getMonthString(DateTime.now()
                      .subtract(Duration(days: 26))
                      .weekday
                      .toString());
                  break;
                case 4:
                  weekDay = getMonthString(DateTime.now()
                      .subtract(Duration(days: 25))
                      .weekday
                      .toString());
                  break;
                case 5:
                  weekDay = getMonthString(DateTime.now()
                      .subtract(Duration(days: 24))
                      .weekday
                      .toString());
                  break;
                case 6:
                  weekDay = getMonthString(DateTime.now()
                      .subtract(Duration(days: 23))
                      .weekday
                      .toString());
                  break;
                case 7:
                  weekDay = getMonthString(DateTime.now()
                      .subtract(Duration(days: 22))
                      .weekday
                      .toString());
                  break;
                case 8:
                  weekDay = getMonthString(DateTime.now()
                      .subtract(Duration(days: 21))
                      .weekday
                      .toString());
                  break;
                case 9:
                  weekDay = getMonthString(DateTime.now()
                      .subtract(Duration(days: 20))
                      .weekday
                      .toString());
                  break;
                case 10:
                  weekDay = getMonthString(DateTime.now()
                      .subtract(Duration(days: 19))
                      .weekday
                      .toString());
                  break;
                case 11:
                  weekDay = getMonthString(DateTime.now()
                      .subtract(Duration(days: 18))
                      .weekday
                      .toString());
                  break;
                case 12:
                  weekDay = getMonthString(DateTime.now()
                      .subtract(Duration(days: 17))
                      .weekday
                      .toString());
                  break;
                case 13:
                  weekDay = getMonthString(DateTime.now()
                      .subtract(Duration(days: 16))
                      .weekday
                      .toString());
                  break;
                case 14:
                  weekDay = getMonthString(DateTime.now()
                      .subtract(Duration(days: 15))
                      .weekday
                      .toString());
                  break;
                case 15:
                  weekDay = getMonthString(DateTime.now()
                      .subtract(Duration(days: 14))
                      .weekday
                      .toString());
                  break;
                case 16:
                  weekDay = getMonthString(DateTime.now()
                      .subtract(Duration(days: 13))
                      .weekday
                      .toString());
                  break;
                case 17:
                  weekDay = getMonthString(DateTime.now()
                      .subtract(Duration(days: 12))
                      .weekday
                      .toString());
                  break;
                case 18:
                  weekDay = getMonthString(DateTime.now()
                      .subtract(Duration(days: 11))
                      .weekday
                      .toString());
                  break;
                case 19:
                  weekDay = getMonthString(DateTime.now()
                      .subtract(Duration(days: 10))
                      .weekday
                      .toString());
                  break;
                case 20:
                  weekDay = getMonthString(DateTime.now()
                      .subtract(Duration(days: 9))
                      .weekday
                      .toString());
                  break;
                case 21:
                  weekDay = getMonthString(DateTime.now()
                      .subtract(Duration(days: 8))
                      .weekday
                      .toString());
                  break;
                case 22:
                  weekDay = getMonthString(DateTime.now()
                      .subtract(Duration(days: 7))
                      .weekday
                      .toString());
                  break;
                case 23:
                  weekDay = getMonthString(DateTime.now()
                      .subtract(Duration(days: 6))
                      .weekday
                      .toString());
                  break;
                case 24:
                  weekDay = getMonthString(DateTime.now()
                      .subtract(Duration(days: 5))
                      .weekday
                      .toString());
                  break;
                case 25:
                  weekDay = getMonthString(DateTime.now()
                      .subtract(Duration(days: 4))
                      .weekday
                      .toString());
                  break;
                case 26:
                  weekDay = getMonthString(DateTime.now()
                      .subtract(Duration(days: 3))
                      .weekday
                      .toString());
                  break;
                case 27:
                  weekDay = getMonthString(DateTime.now()
                      .subtract(Duration(days: 2))
                      .weekday
                      .toString());
                  break;
                case 28:
                  weekDay = getMonthString(DateTime.now()
                      .subtract(Duration(days: 1))
                      .weekday
                      .toString());
                  break;
                case 29:
                  weekDay = getMonthString(DateTime.now().weekday.toString());
                  break;

                default:
                  throw Error();
              }
              return BarTooltipItem(
                weekDay + '\n',
                const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: (rod.toY - 1).toString(),
                    style: const TextStyle(
                      color: Colors.yellow,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              );
            }),
        touchCallback: (FlTouchEvent event, barTouchResponse) {
          setState(() {
            if (!event.isInterestedForInteractions ||
                barTouchResponse == null ||
                barTouchResponse.spot == null) {
              touchedIndex = -1;
              return;
            }
            touchedIndex = barTouchResponse.spot!.touchedBarGroupIndex;
          });
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (double value, TitleMeta meta) {
              const style = TextStyle(
                  color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 8);

              switch (value.toInt()) {
                case 0:
                  return Text(
                    DateTime.now().subtract(Duration(days: 29)).day.toString(),
                    style: style,
                  );
                case 1:
                  return Text(
                    DateTime.now().subtract(Duration(days: 28)).day.toString(),
                    style: style,
                  );
                case 2:
                  return Text(
                    DateTime.now().subtract(Duration(days: 27)).day.toString(),
                    style: style,
                  );
                case 3:
                  return Text(
                    DateTime.now().subtract(Duration(days: 26)).day.toString(),
                    style: style,
                  );
                case 4:
                  return Text(
                    DateTime.now().subtract(Duration(days: 25)).day.toString(),
                    style: style,
                  );
                case 5:
                  return Text(
                    DateTime.now().subtract(Duration(days: 24)).day.toString(),
                    style: style,
                  );
                case 6:
                  return Text(
                    DateTime.now().subtract(Duration(days: 23)).day.toString(),
                    style: style,
                  );
                case 7:
                  return Text(
                    DateTime.now().subtract(Duration(days: 22)).day.toString(),
                    style: style,
                  );
                case 8:
                  return Text(
                    DateTime.now().subtract(Duration(days: 21)).day.toString(),
                    style: style,
                  );
                case 9:
                  return Text(
                    DateTime.now().subtract(Duration(days: 20)).day.toString(),
                    style: style,
                  );
                case 10:
                  return Text(
                    DateTime.now().subtract(Duration(days: 19)).day.toString(),
                    style: style,
                  );
                case 11:
                  return Text(
                    DateTime.now().subtract(Duration(days: 18)).day.toString(),
                    style: style,
                  );
                case 12:
                  return Text(
                    DateTime.now().subtract(Duration(days: 17)).day.toString(),
                    style: style,
                  );
                case 13:
                  return Text(
                    DateTime.now().subtract(Duration(days: 16)).day.toString(),
                    style: style,
                  );
                case 14:
                  return Text(
                    DateTime.now().subtract(Duration(days: 15)).day.toString(),
                    style: style,
                  );
                case 15:
                  return Text(
                    DateTime.now().subtract(Duration(days: 14)).day.toString(),
                    style: style,
                  );
                case 16:
                  return Text(
                    DateTime.now().subtract(Duration(days: 13)).day.toString(),
                    style: style,
                  );
                case 17:
                  return Text(
                    DateTime.now().subtract(Duration(days: 12)).day.toString(),
                    style: style,
                  );
                case 18:
                  return Text(
                    DateTime.now().subtract(Duration(days: 11)).day.toString(),
                    style: style,
                  );
                case 19:
                  return Text(
                    DateTime.now().subtract(Duration(days: 10)).day.toString(),
                    style: style,
                  );
                case 20:
                  return Text(
                    DateTime.now().subtract(Duration(days: 9)).day.toString(),
                    style: style,
                  );
                case 21:
                  return Text(
                    DateTime.now().subtract(Duration(days: 8)).day.toString(),
                    style: style,
                  );
                case 22:
                  return Text(
                    DateTime.now().subtract(Duration(days: 7)).day.toString(),
                    style: style,
                  );
                case 23:
                  return Text(
                    DateTime.now().subtract(Duration(days: 6)).day.toString(),
                    style: style,
                  );
                case 24:
                  return Text(
                    DateTime.now().subtract(Duration(days: 5)).day.toString(),
                    style: style,
                  );
                case 25:
                  return Text(
                    DateTime.now().subtract(Duration(days: 4)).day.toString(),
                    style: style,
                  );
                case 26:
                  return Text(
                    DateTime.now().subtract(Duration(days: 3)).day.toString(),
                    style: style,
                  );
                case 27:
                  return Text(
                    DateTime.now().subtract(Duration(days: 2)).day.toString(),
                    style: style,
                  );
                case 28:
                  return Text(
                    DateTime.now().subtract(Duration(days: 1)).day.toString(),
                    style: style,
                  );
                case 29:
                  return Text(
                    DateTime.now().day.toString(),
                    style: style,
                  );

                default:
                  return Text(
                    '',
                    style: style,
                  );
              }
            },
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showingGroups(),
      gridData: FlGridData(show: false),
    );
  }
}

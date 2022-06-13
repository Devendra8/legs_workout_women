import 'dart:io';
import 'package:flutter/material.dart';

Future<bool> showExitPopup(context) async {
  return await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SizedBox(
            height: 90,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Do you want to exit?"),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // for (int i = 0; i < getScheduleRecords.length; i++) {
                          //   NotificationApi.scheduledNotification(
                          //     hour: getScheduleRecords[i].hour,
                          //     minutes: getScheduleRecords[i].min,
                          //     id: getScheduleRecords[i].id,
                          //   );
                          // }
                          // NotificationApi.showPeriodicNotification(
                          //   title: 'Water Time',
                          //   body: 'Drink One Glass of Water',
                          //   payload: 'water',
                          // );

                          // NotificationApi.showScheduleNotification(
                          //     title: 'Water Time',
                          //     body: 'Drink One Glass of Water',
                          //     payload: 'water',
                          //     scheduledDate:
                          //         DateTime.now().add(Duration(seconds: 12)));
                          exit(0);
                        },
                        child: Text("Yes"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.red.shade800),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                        child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("No", style: TextStyle(color: Colors.black)),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                    ))
                  ],
                )
              ],
            ),
          ),
        );
      });
}

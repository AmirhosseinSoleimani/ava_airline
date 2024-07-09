
//////////////////////////////
///
///
//TODO feature needs to modify
///
///

//////////////////////////////



import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class NotificationModel {
  final String title;
  final String message;
  final DateTime time;
  final String type;

  NotificationModel({
    required this.title,
    required this.message,
    required this.time,
    required this.type,
  });
}

List<NotificationModel> demoNotifications = [
  NotificationModel(
    title: "Flight Status Update",
    message: "Your flight AV123 has been delayed by 30 minutes.",
    time: DateTime.now().subtract(Duration(minutes: 10)),
    type: "flight_status",
  ),
  NotificationModel(
    title: "Promotion",
    message: "Get 20% off on your next flight booking!",
    time: DateTime.now().subtract(Duration(hours: 2)),
    type: "promotion",
  ),
  NotificationModel(
    title: "Check-in Reminder",
    message: "Check-in is now open for your flight AV456.",
    time: DateTime.now().subtract(Duration(days: 1)),
    type: "check_in",
  ),
  NotificationModel(
    title: "Flight Status Update",
    message: "Your flight AV789 is now boarding at Gate 5.",
    time: DateTime.now().subtract(Duration(minutes: 30)),
    type: "flight_status",
  ),
  NotificationModel(
    title: "Promotion",
    message: "Upgrade to Business Class with a 50% discount!",
    time: DateTime.now().subtract(Duration(days: 3)),
    type: "promotion",
  ),
];


class NotificationCard extends StatelessWidget {
  final NotificationModel notification;

  NotificationCard({required this.notification});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              notification.title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(notification.message),
            SizedBox(height: 8),
            Text(
              DateFormat('yyyy-MM-dd – kk:mm').format(notification.time),
              style: TextStyle(color: Colors.grey[600], fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationsPage extends StatelessWidget {

  static const notificationsPageName = 'notifications-page';
  static const notificationsPagePath = '/notifications-page';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
      ),
      body: ListView.builder(
        itemCount: demoNotifications.length,
        itemBuilder: (context, index) {
          return NotificationCard(notification: demoNotifications[index]);
        },
      ),
    );
  }
}
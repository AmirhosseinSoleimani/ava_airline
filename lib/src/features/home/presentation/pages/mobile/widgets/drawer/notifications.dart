
//////////////////////////////
///
///
//TODO feature needs to modify
///
///

//////////////////////////////



import 'package:ava_airline/generated/l10n.dart';
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




class NotificationCard extends StatelessWidget {
  final NotificationModel notification;

  NotificationCard({super.key, required this.notification});

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
  const NotificationsPage({super.key});


  @override
  Widget build(BuildContext context) {

    final localization = S.of(context);
    List<NotificationModel> demoNotifications = [
      NotificationModel(
        title: localization.title1,
        message: localization.message1,
        time: DateTime.now().subtract(Duration(minutes: 10)),
        type: "flight_status",
      ),
      NotificationModel(
        title: localization.title2,
        message: localization.message2,
        time: DateTime.now().subtract(Duration(hours: 2)),
        type: "promotion",
      ),
      NotificationModel(
        title: localization.title3,
        message: localization.message3,
        time: DateTime.now().subtract(Duration(days: 1)),
        type: "check_in",
      ),
      NotificationModel(
        title: localization.title4,
        message: localization.message4,
        time: DateTime.now().subtract(Duration(minutes: 30)),
        type: "flight_status",
      ),
      NotificationModel(
        title: localization.title5,
        message: localization.message5,
        time: DateTime.now().subtract(Duration(days: 3)),
        type: "promotion",
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        surfaceTintColor: Theme.of(context).colorScheme.surfaceTint,
        title: Text(localization.notifications),
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
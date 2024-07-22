import 'package:ava_airline/generated/l10n.dart';
import 'package:ava_airline/src/features/home/presentation/pages/mobile/widgets/drawer/notifications.dart';
import 'package:ava_airline/src/shared/resources/theme/bloc/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = S.of(context);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 150,
            padding: const EdgeInsets.only(top: 36, right: 16, left: 16),
            decoration:  BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  context.read<ThemeCubit>().tier.path,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/image/avatar.png'),
                    maxRadius: 30,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text('Soroush Beigi',
                      style: Theme.of(context).textTheme.titleMedium),
                ]),
          ),
          ListTile(
            title: Text(localization.notifications),
            leading: const Icon(Icons.notifications),
            onTap: () {
              context.push(NotificationsPage.notificationsPagePath);
            },
          ),
          ListTile(
            title: Text(localization.airportMaps),
            leading: const Icon(Icons.connecting_airports_rounded),
            onTap: () {},
          ),
          ListTile(
            title: Text(localization.flightStatus),
            leading: const Icon(Icons.access_time_rounded),
            onTap: () {},
          ),
          ListTile(
            title: Text(localization.baggageTracker),
            leading: const Icon(Icons.shopping_bag_outlined),
            onTap: () {},
          ),
          ListTile(
            title: Text(localization.travelUpdates),
            leading: const Icon(Icons.info),
            onTap: () {},
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.5,
          ),
          ListTile(
            title: Text(localization.faq),
            leading: const Icon(Icons.question_mark),
            onTap: () {},
          ),
          ListTile(
            title: Text(localization.contactUs),
            leading: const Icon(Icons.call),
            onTap: () {},
          ),
          ListTile(
            title: Text(localization.sendFeedback),
            leading: const Icon(Icons.feedback),
            onTap: () {},
          ),
          ListTile(
            title: Text(localization.legal),
            leading: const Icon(Icons.newspaper_outlined),
            onTap: () {},
          ),
          ListTile(
            title: Text(localization.rulesAndNotices),
            leading: const Icon(Icons.rule),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

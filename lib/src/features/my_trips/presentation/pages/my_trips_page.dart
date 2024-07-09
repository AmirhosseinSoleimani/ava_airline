import 'package:ava_airline/src/features/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

import '../../../../shared/resources/resources.dart';

class MyTripsPage extends StatelessWidget {
  static const myTripsPageName = 'my-trips-page';
  static const myTripsPagePath = '/my-trips-page';

  const MyTripsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(localization.myTrips),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'assets/image/plane.png',
              width: MediaQuery.of(context).size.width,
            ),
            Column(
              children: [
                Text(localization.noTrips,
                    style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 16),
                Text(localization.noTripsDescription,
                    style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(32),
              child: Column(children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            Theme.of(context).colorScheme.primary)),
                    child: Text(
                      localization.addBooking,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary),
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: 50,
                  child: OutlinedButton(
                  style: ButtonStyle(
                    side: WidgetStatePropertyAll(BorderSide(
                      color: Theme.of(context).colorScheme.secondary, // Border color
                      width: 1, // Border thickness
                    ),),
                    backgroundColor: WidgetStatePropertyAll(
                        Theme.of(context).colorScheme.surface),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(30.0),
                    )),
                  ),
                  child: Text(
                    localization.bookFlight,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Theme.of(context).colorScheme.onSurface),
                  ),
                  onPressed: () => context.go('/book-page'),
                ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

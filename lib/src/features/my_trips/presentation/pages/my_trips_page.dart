import 'package:ava_airline/generated/l10n.dart';
import 'package:ava_airline/src/features/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:ava_airline/src/features/home/presentation/pages/mobile/widgets/drawer/drawer_widget.dart';
import 'package:ava_airline/src/features/my_trips/presentation/widgets/flight_detail_card.dart';
import 'package:ava_airline/src/shared/resources/theme/bloc/theme_cubit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../shared/resources/resources.dart';

class MyTripsPage extends StatefulWidget {
  static const myTripsPageName = 'my-trips-page';
  static const myTripsPagePath = '/my-trips-page';

  const MyTripsPage({super.key});

  @override
  State<MyTripsPage> createState() => _MyTripsPageState();
}

class _MyTripsPageState extends State<MyTripsPage> {
  bool hasFlight = false;

  @override
  Widget build(BuildContext context) {
    final localization = S.of(context);
    final locale = Localizations.localeOf(context).languageCode;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        surfaceTintColor: Theme.of(context).colorScheme.surfaceTint,
        title: Text(localization.myTrips),
        bottom: PreferredSize(
            preferredSize: const Size(double.maxFinite, 10),
            child: Container(
              color: context.read<ThemeCubit>().tier.color,
              height: 20,
            )),
      ),
      drawer: const DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p32, vertical: AppPadding.p8),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: hasFlight
                ? [
                    // Card(
                    //   child: Container(
                    //     padding: const EdgeInsets.all(8),
                    //     margin: const EdgeInsets.all(8),
                    //     child: Column(
                    //       children: [
                    //         Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //           children: [
                    //             Expanded(
                    //               child: Align(
                    //                 alignment:locale.contains('en')? Alignment.centerLeft:Alignment.centerRight,
                    //                 child: Column(
                    //                   children: [
                    //                     Text(localization.shiraz,style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey.shade700),),
                    //                     const SizedBox(height: 4),
                    //                     Text(localization.shirazApt,style: Theme.of(context).textTheme.titleLarge,),
                    //                   ],
                    //                 ),
                    //               ),
                    //             ),
                    //             Transform.rotate(
                    //                 angle: locale.contains('en') ? 0 : 180 * 3.1415927 /180,
                    //                 child: const Icon(IconManager.airplane)),
                    //             Expanded(
                    //               child: Align(
                    //                 alignment:locale.contains('en')? Alignment.centerRight:Alignment.centerLeft,
                    //                 child: Column(
                    //                   children: [
                    //                     Text(localization.tehran,style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey.shade700),),
                    //                     const SizedBox(height: 4),
                    //                     Text(localization.mehrabad,style: Theme.of(context).textTheme.titleLarge,),
                    //                   ],
                    //                 ),
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //         const SizedBox(height: 8),
                    //         const Divider(color: Colors.grey,
                    //         thickness: 0.5,
                    //         ),
                    //         Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //           children: [
                    //             Expanded(
                    //               child: Align(
                    //                 alignment:locale.contains('en')? Alignment.centerLeft:Alignment.centerRight,
                    //                 child: Column(
                    //                   children: [
                    //                     Text(localization.dateTime,style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey.shade700),textAlign: TextAlign.center),
                    //                     const SizedBox(height: 4),
                    //                     Text(localization.dateTimeMock1,style: Theme.of(context).textTheme.titleLarge,textAlign: TextAlign.center),
                    //                   ],
                    //                 ),
                    //               ),
                    //             ),
                    //             Expanded(
                    //               child: Align(
                    //                 alignment:locale.contains('en')? Alignment.centerRight:Alignment.centerLeft,
                    //                 child: Column(
                    //                   children: [
                    //                     Text(localization.dateTime,style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey.shade700),textAlign: TextAlign.center,),
                    //                     const SizedBox(height: 4),
                    //                     Text(localization.dateTimeMock2,style: Theme.of(context).textTheme.titleLarge,textAlign: TextAlign.center),
                    //                   ],
                    //                 ),
                    //               ),
                    //             ),
                    //
                    //           ],
                    //         ),
                    //     const SizedBox(height: 8),
                    //         const Divider(color: Colors.grey,
                    //           thickness: 0.5,
                    //         ),
                    //         const SizedBox(height: 8),
                    //         SizedBox(
                    //           width: MediaQuery.of(context).size.width * 0.65,
                    //           height: 40,
                    //           child: ElevatedButton(
                    //             style: ButtonStyle(
                    //                 backgroundColor: WidgetStatePropertyAll(
                    //                     Theme.of(context).colorScheme.primary)),
                    //             child: Text(
                    //               localization.checkIn,
                    //               style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    //                 color: Theme.of(context).colorScheme.onPrimary,
                    //                 fontWeight: FontWeight.w500,
                    //               ),
                    //             ),
                    //             onPressed: () {
                    //               setState(() {
                    //                 hasFlight=false;
                    //               });
                    //             },
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // )
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            hasFlight = false;
                          });
                        },
                        child: const FlightDetailCard())
                  ]
                : [
                    Image.asset(
                      'assets/image/plane.png',
                      width: MediaQuery.of(context).size.width,
                    ),
                    Column(
                      children: [
                        Text(localization.noTrips,
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(color: Colors.grey[600])),
                        const SizedBox(height: 16),
                        Text(
                          localization.noTripsDescription,
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[600]),
                          textAlign: TextAlign.center,
                        ),
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
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      fontWeight: FontWeight.w500),
                            ),
                            onPressed: () {
                              setState(() {
                                hasFlight = true;
                              });
                            },
                          ),
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.75,
                          height: 50,
                          child: OutlinedButton(
                            style: ButtonStyle(
                              side: WidgetStatePropertyAll(
                                BorderSide(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondary, // Border color
                                  width: 1, // Border thickness
                                ),
                              ),
                              backgroundColor: WidgetStatePropertyAll(
                                  Theme.of(context).colorScheme.surface),
                              shape:
                                  WidgetStatePropertyAll(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              )),
                            ),
                            child: Text(
                              localization.bookFlight,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface,
                                      fontWeight: FontWeight.w500),
                            ),
                            onPressed: () => context.go('/book-page'),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                      ]),
                    ),
                  ],
          ),
        ),
      ),
    );
  }
}

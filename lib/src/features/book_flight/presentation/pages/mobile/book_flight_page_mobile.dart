

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class BookFlightPageMobile extends StatefulWidget {
  const BookFlightPageMobile({super.key});

  @override
  State<BookFlightPageMobile> createState() => _BookFlightPageMobileState();
}

class _BookFlightPageMobileState extends State<BookFlightPageMobile>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(localization.searchFlights),
        bottom: TabBar(
          labelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold),
          unselectedLabelStyle: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontWeight: FontWeight.w500),
          controller: _tabController,
          tabs: [
            Tab(
              text: localization.returnS,
            ),
            Tab(
              text: localization.oneWay,
            ),
            Tab(
              text: localization.multiCity,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: TabBarView(
              controller: _tabController,
              children: [
                returnTab(context),
                oneWayTab(context),
                multiCityTab(context),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                              Theme.of(context).colorScheme.primary)),
                      child: Text(
                        localization.search,
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  returnTab(context) {
    final localization = AppLocalizations.of(context)!;
    return Column(
      children: [
        const SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainer,
              borderRadius: BorderRadius.circular(12)),
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey.shade300),
                              ),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(localization.from),
                                  const SizedBox(height: 8),
                                  Text(
                                    localization.selectOrigin,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.grey[700]),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        VerticalDivider(color: Colors.grey[500],width: 0,thickness: 0.5,),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey.shade300),
                              ),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                   Text(localization.to),
                                  const SizedBox(height: 8),
                                  Text(
                                    localization.selectDestination,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.grey[700]),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            color:
                                Theme.of(context).colorScheme.surfaceContainer,
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.compare_arrows_rounded,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 8),
                         Text(localization.travelDates,style: Theme.of(context).textTheme.bodyLarge,),
                        const SizedBox(height: 4),
                        Text(
                          localization.selectDates,
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey.shade700
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text(localization.passengerAndCabinClass),
                    const SizedBox(height: 16),
                    Text(
                      localization.adultEconomyClass1,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  oneWayTab(context) {
    final localization = AppLocalizations.of(context)!;
    return Column(
      children: [
        const SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainer,
              borderRadius: BorderRadius.circular(12)),
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey.shade300),
                              ),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(localization.from),
                                  const SizedBox(height: 8),
                                  Text(
                                    localization.selectOrigin,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.grey[700]),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        VerticalDivider(color: Colors.grey[500],width: 0,thickness: 0.5,),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey.shade300),
                              ),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(localization.to),
                                  const SizedBox(height: 8),
                                  Text(
                                    localization.selectDestination,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.grey[700]),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            color:
                            Theme.of(context).colorScheme.surfaceContainer,
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.compare_arrows_rounded,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey.shade300),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 8),
                            Text(localization.travelDates,style: Theme.of(context).textTheme.bodyLarge,),
                            const SizedBox(height: 4),
                            Text(
                              localization.selectDates,
                              style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey.shade700
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(localization.passengerAndCabinClass),
                    const SizedBox(height: 16),
                    Text(
                      localization.adultEconomyClass1,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  multiCityTab(context) {
    final localization = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        Padding(
          padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width * 0.1),
          child: Text('${localization.flight} 1'),
        ),
        const SizedBox(height: 8),
        Center(
          child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainer,
                borderRadius: BorderRadius.circular(12)),
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(color: Colors.grey.shade300),
                                ),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                     Text(localization.from),
                                    const SizedBox(height: 8),
                                    Text(
                                      localization.selectOrigin,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.grey[700]),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          VerticalDivider(color: Colors.grey[500],width: 0,thickness: 0.5,),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(color: Colors.grey.shade300),
                                ),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                     Text(localization.to),
                                    const SizedBox(height: 8),
                                    Text(
                                      localization.selectDestination,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.grey[700]),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300),
                              color:
                              Theme.of(context).colorScheme.surfaceContainer,
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(
                            Icons.compare_arrows_rounded,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey.shade300),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(height: 8),
                              Text(localization.travelDates,style: Theme.of(context).textTheme.bodyLarge,),
                              const SizedBox(height: 4),
                              Text(
                                localization.selectDates,
                                style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey.shade700
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),

              ],
            ),
          ),
        ),
        const SizedBox(height: 32),
        Padding(
          padding: EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width * 0.1),
          child: Text('${localization.flight} 2'),
        ),
        const SizedBox(height: 8),
        Center(
          child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainer,
                borderRadius: BorderRadius.circular(12)),
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(color: Colors.grey.shade300),
                                ),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(localization.from),
                                    const SizedBox(height: 8),
                                    Text(
                                      localization.selectOrigin,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.grey[700]),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          VerticalDivider(color: Colors.grey[500],width: 0,thickness: 0.5,),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(color: Colors.grey.shade300),
                                ),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(localization.to),
                                    const SizedBox(height: 8),
                                    Text(
                                      localization.selectDestination,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.grey[700]),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300),
                              color:
                              Theme.of(context).colorScheme.surfaceContainer,
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(
                            Icons.compare_arrows_rounded,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey.shade300),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(height: 8),
                              Text(localization.travelDates,style: Theme.of(context).textTheme.bodyLarge,),
                              const SizedBox(height: 4),
                              Text(
                                localization.selectDates,
                                style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey.shade700
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),

              ],
            ),
          ),
        ),
      ],
    );
  }
}

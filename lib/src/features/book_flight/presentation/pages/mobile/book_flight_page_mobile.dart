import 'package:ava_airline/generated/l10n.dart';
import 'package:ava_airline/src/features/book_flight/presentation/pages/mobile/widgets/flight_card.dart';
import 'package:ava_airline/src/features/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:ava_airline/src/features/home/presentation/pages/mobile/widgets/drawer/drawer_widget.dart';
import 'package:flutter/material.dart';

class BookFlightPageMobile extends StatefulWidget {
  const BookFlightPageMobile({super.key});

  @override
  State<BookFlightPageMobile> createState() => _BookFlightPageMobileState();
}

class _BookFlightPageMobileState extends State<BookFlightPageMobile>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final localization = S.of(context);
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        surfaceTintColor: Theme.of(context).colorScheme.surfaceTint,
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
              child: FittedBox(
                child: Text(
                  localization.oneWay,
                  maxLines: 1,
                ),
              ),
            ),
            Tab(
              child: FittedBox(
                child: Text(
                  localization.returnS,
                  maxLines: 1,
                ),
              ),
            ),
            Tab(
              child: FittedBox(
                child: Text(
                  localization.multiCity,
                  maxLines: 1,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: TabBarView(
              controller: _tabController,
              children: [
                oneWayTab(context),
                returnTab(context),
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
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      onPressed: () {
                        context.push('/book-search-result');
                      },
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  returnTab(context) {
    return const Column(
      children: [
        SizedBox(height: 16),
        FlightCard(
          isSingle: false,
        ),
      ],
    );
  }

  oneWayTab(context) {
    return const Column(
      children: [
        SizedBox(height: 16),
        FlightCard(
          isSingle: true,
        ),
      ],
    );
  }

  multiCityTab(context) {
    final localization = S.of(context);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1),
            child: Text('${localization.flight} 1'),
          ),
          const SizedBox(height: 8),
          const Center(child: FlightCard(isSingle: true)),
          const SizedBox(height: 32),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1),
            child: Text('${localization.flight} 2'),
          ),
          const SizedBox(height: 8),
          const Center(child: FlightCard(isSingle: true)),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  @override
  void updateKeepAlive() {}

  @override
  bool get wantKeepAlive => true;
}

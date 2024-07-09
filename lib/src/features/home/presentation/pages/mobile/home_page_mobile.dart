import 'package:ava_airline/src/features/features.dart';
import 'package:ava_airline/src/features/home/domain/entities/carousel_entity.dart';
import 'package:ava_airline/src/features/home/domain/entities/city_entity.dart';
import 'package:ava_airline/src/features/home/domain/entities/destination_entity.dart';
import 'package:ava_airline/src/features/home/domain/entities/feature_entity.dart';
import 'package:ava_airline/src/features/home/presentation/pages/mobile/widgets/carousel_card.dart';
import 'package:ava_airline/src/features/home/presentation/pages/mobile/widgets/city_card.dart';
import 'package:ava_airline/src/features/home/presentation/pages/mobile/widgets/destination_card.dart';
import 'package:ava_airline/src/features/home/presentation/pages/mobile/widgets/drawer/notifications.dart';
import 'package:ava_airline/src/features/home/presentation/pages/mobile/widgets/feature_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shimmer/shimmer.dart';

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({super.key});

  @override
  State<HomePageMobile> createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  int _current = 0;
  bool isLoading = true;
  final CarouselController _controller = CarouselController();

  @override
  void initState() {
    loadPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    final carousels = [
      Carousel(
        id: 1,
        title: localization.buyTicket,
        assetPath: 'assets/image/home_page/home_page.png',
        description: localization.bookYourFlight,
      ),
      Carousel(
        id: 2,
        title: localization.buyTicket,
        assetPath: 'assets/image/home_page/home_page.png',
        description: localization.bookYourFlight,
      ),
      Carousel(
        id: 3,
        title: localization.buyTicket,
        assetPath: 'assets/image/home_page/home_page.png',
        description: localization.bookYourFlight,
      ),
    ];

    final destinations = [
      Destination(
          id: 1,
          city: localization.ahvaz,
          country: localization.iran,
          assetPath: 'assets/image/ahvaz.jpg',
          minimumPrice: 500,
          originCity: localization.tehran),
      Destination(
          id: 1,
          city: localization.shiraz,
          country: localization.iran,
          assetPath: 'assets/image/shiraz.jpg',
          minimumPrice: 400,
          originCity: localization.tehran),
      Destination(
          id: 1,
          city: localization.isfahan,
          country: localization.iran,
          assetPath: 'assets/image/isfahan.jpg',
          minimumPrice: 350,
          originCity: localization.tehran),
    ];

    final features = [
      Feature(title: localization.hotels, assetPath: 'assets/image/hotel.png'),
      Feature(title: localization.dining, assetPath: 'assets/image/dining.jpg'),
      Feature(
          title: localization.flightEntertainment,
          assetPath: 'assets/image/entertainment.jpg'),
    ];

    final cities = [
      City(
          name: localization.tehran,
          assetPath: 'assets/image/1.png',
          description: ''),
      City(
          name: localization.mashhad,
          assetPath: 'assets/image/2.png',
          description: ''),
      City(
          name: localization.qeshm,
          assetPath: 'assets/image/3.png',
          description: ''),
      City(
          name: localization.kish,
          assetPath: 'assets/image/4.png',
          description: ''),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/image/ava.png',
          height: AppBar().preferredSize.height - 16,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 150,
              padding: const EdgeInsets.only(top: 36, right: 16, left: 16),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image/gold.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
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
                context.go(NotificationsPage.notificationsPagePath);
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
      ),
      body: isLoading
          ? _buildShimmer(context)
          : RefreshIndicator(
              onRefresh: () async{
                setState(() {
                  isLoading = true;
                });
                loadPage();
              },
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CarouselSlider(
                      carouselController: _controller,
                      items: carousels
                          .map(
                            (e) => CarouselCard(
                              carousel: e,
                            ),
                          )
                          .toList(),
                      options: CarouselOptions(
                          autoPlay: true,
                          viewportFraction: 1,
                          height: 200,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          }),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: carousels.asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () => _controller.animateToPage(entry.key),
                          child: Container(
                            width: 12,
                            height: 12,
                            margin: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 4),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: (Theme.of(context).colorScheme.primary)
                                    .withOpacity(
                                        _current == entry.key ? 1 : 0.4)),
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal:
                              (MediaQuery.of(context).size.width * 0.025)),
                      child: Text(
                        '${localization.destinationsFrom}\n${localization.tehran}${localization.comma} ${localization.iran}',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: CarouselSlider(
                          items: destinations
                              .map((e) => DestinationCard(destination: e))
                              .toList(),
                          options: CarouselOptions(
                              autoPlay: true,
                              height: 200,
                              viewportFraction: 0.7),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal:
                              (MediaQuery.of(context).size.width * 0.025)),
                      child: Text(
                        localization.avaFlightExperience,
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: features
                            .map((e) => FeatureCard(feature: e))
                            .toList(),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal:
                              (MediaQuery.of(context).size.width * 0.025)),
                      child: Text(
                        localization.popularDestinations,
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: CarouselSlider(
                          items: cities.map((e) => CityCard(city: e)).toList(),
                          options: CarouselOptions(
                              autoPlay: true,
                              enlargeCenterPage: true,
                              enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                              enlargeFactor: 0.35,
                              viewportFraction: 0.5),
                        ),
                      ),
                    ),
                    const SizedBox(height: 100)
                  ],
                ),
              ),
            ),
    );
  }

  _buildShimmer(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    return Shimmer.fromColors(
      direction: ShimmerDirection.ltr,
      period: const Duration(milliseconds: 800),
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              disableGesture: true,
              carouselController: _controller,
              items: List.generate(
                1,
                (_) => Carousel(
                    id: -1,
                    description: localization.bookYourFlight,
                    title: localization.buyTicket,
                    assetPath: ''),
              )
                  .map(
                    (e) => CarouselCard(
                      carousel: e,
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: 1,
                  height: 200,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => Container(
                  width: 12,
                  height: 12,
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).colorScheme.primary)),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: (MediaQuery.of(context).size.width * 0.025)),
              child: Text(
                '${localization.destinationsFrom}\n${localization.tehran}${localization.comma} ${localization.iran}',
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            const SizedBox(height: 4),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.95,
                child: CarouselSlider(
                  disableGesture: true,
                  items: List.generate(
                    3,
                    (_) => const Destination(
                        id: -1,
                        city: '',
                        country: '',
                        assetPath: '',
                        minimumPrice: 0,
                        originCity: ''),
                  ).map((e) => DestinationCard(destination: e)).toList(),
                  options: CarouselOptions(
                    height: 200,
                    viewportFraction: 0.7,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: (MediaQuery.of(context).size.width * 0.025)),
              child: Text(
                localization.avaFlightExperience,
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: List.generate(
                  3,
                  (_) => const Feature(title: '', assetPath: ''),
                ).map((e) => FeatureCard(feature: e)).toList(),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: (MediaQuery.of(context).size.width * 0.025)),
              child: Text(
                localization.popularDestinations,
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            const SizedBox(height: 100)
          ],
        ),
      ),
    );
  }

  void loadPage() async {
    Future.delayed(const Duration(milliseconds: 1500)).then((_) {
      isLoading = false;
      setState(() {});
    });
  }
}

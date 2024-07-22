import 'package:ava_airline/src/features/features.dart';
import 'package:ava_airline/generated/l10n.dart';
import 'package:ava_airline/src/features/home/domain/entities/carousel_entity.dart';
import 'package:ava_airline/src/features/home/domain/entities/city_entity.dart';
import 'package:ava_airline/src/features/home/domain/entities/destination_entity.dart';
import 'package:ava_airline/src/features/home/domain/entities/feature_entity.dart';
import 'package:ava_airline/src/features/home/presentation/pages/mobile/widgets/carousel_card.dart';
import 'package:ava_airline/src/features/home/presentation/pages/mobile/widgets/city_card.dart';
import 'package:ava_airline/src/features/home/presentation/pages/mobile/widgets/destination_card.dart';
import 'package:ava_airline/src/features/home/presentation/pages/mobile/widgets/drawer/drawer_widget.dart';
import 'package:ava_airline/src/features/home/presentation/pages/mobile/widgets/feature_card.dart';
import 'package:ava_airline/src/features/video/presentation/video_page.dart';
import 'package:ava_airline/src/shared/resources/theme/bloc/theme_cubit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
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
    final localization = S.of(context);
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
          minimumPrice: 200,
          minimumPriceLow: 150,
          originCity: localization.tehran,
          persianPrice: '1,720,000 ریال',
        persianPriceLow: '1,600,000 ریال',
      ),
      Destination(
          id: 1,
          city: localization.shiraz,
          country: localization.iran,
          assetPath: 'assets/image/shiraz.jpg',
          minimumPrice: 100,
          minimumPriceLow: 80,
          originCity: localization.tehran,
          persianPrice: '1,900,000 ریال',
        persianPriceLow: '1,750,000 ریال',
      ),
      Destination(
          id: 1,
          city: localization.isfahan,
          country: localization.iran,
          assetPath: 'assets/image/isfahan.jpg',
          minimumPrice: 250,
          minimumPriceLow: 220,
          originCity: localization.tehran,
          persianPrice: '1,330,000 ریال',
        persianPriceLow: '1,100,000 ریال',
      ),


      ///foreign flights
      Destination(
          id: 2,
          city: localization.baghdad,
          country: localization.iraq,
          assetPath: 'assets/image/baghdad.jpg',
          minimumPrice: 400,
          minimumPriceLow: 320,
          originCity: localization.tehran,
          persianPrice: '2,520,000 ریال',
        persianPriceLow: '2,130,000 ریال',
      ),

      Destination(
          id: 3,
          city: localization.dubai,
          country: localization.uae,
          assetPath: 'assets/image/dubai.jpg',
          minimumPrice: 450,
          minimumPriceLow: 410,
          originCity: localization.tehran,
          persianPrice: '6,710,000 ریال',
        persianPriceLow: '6,220,000 ریال',
      ),

      Destination(
          id: 4,
          city: localization.istanbul,
          country: localization.turkey,
          assetPath: 'assets/image/istanbul.jpg',
          minimumPrice: 500,
          minimumPriceLow: 400,
          originCity: localization.tehran,
          persianPrice: '4,900,000 ریال',
          persianPriceLow: '4,200,000 ریال'
      ),


    ];

    final features = [
      Feature(title: localization.hotels, assetPath: 'assets/image/hotel.png'),
      Feature(title: localization.carRental,
          assetPath: 'assets/image/car_rental.jpg'),
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
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .surface,
        surfaceTintColor: Theme
            .of(context)
            .colorScheme
            .surfaceTint,
        title: Image.asset(
          'assets/image/ava.png',
          height: AppBar().preferredSize.height - 16,
        ),
        bottom: PreferredSize(preferredSize: const Size(double.maxFinite, 10), child: Container(color:  context.read<ThemeCubit>().tier.color, height: 20,)),
      ),
      drawer: const DrawerWidget(),
      body: isLoading
          ? _buildShimmer(context)
          : RefreshIndicator(
        onRefresh: () async {
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
                  (e) =>
                  CarouselCard(
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
            children: carousels
                .asMap()
                .entries
                .map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 12,
                  height: 12,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8, horizontal: 4),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme
                          .of(context)
                          .colorScheme
                          .primary)
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
                (MediaQuery
                    .of(context)
                    .size
                    .width * 0.025)),
            child: Text(
              '${localization.destinationsFrom}\n${localization
                  .tehran}${localization.comma} ${localization.iran}',
              style: Theme
                  .of(context)
                  .textTheme
                  .displayMedium,
            ),
          ),
          const SizedBox(height: 4),
          Center(
            child: SizedBox(
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.95,
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
                (MediaQuery
                    .of(context)
                    .size
                    .width * 0.025)),
            child: Text(
              localization.avaSideServices,
              style: Theme
                  .of(context)
                  .textTheme
                  .displayMedium,
            ),
          ),
          SizedBox(
            width: MediaQuery
                .of(context)
                .size
                .width,
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
                (MediaQuery
                    .of(context)
                    .size
                    .width * 0.025)),
            child: Text(
              localization.popularDestinations,
              style: Theme
                  .of(context)
                  .textTheme
                  .displayMedium,
            ),
          ),
          const SizedBox(height: 4),
          Center(
            child: SizedBox(
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.95,
              child: CarouselSlider(
                  items: cities.map((e) =>
                      GestureDetector(onTap: () => context.push(VideoPage.pagePath),child: CityCard(city: e))).toList(),
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
    ),)
    ,
    );
  }

  _buildShimmer(BuildContext context) {
    final localization = S.of(context);
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
                    (_) =>
                    Carousel(
                        id: -1,
                        description: localization.bookYourFlight,
                        title: localization.buyTicket,
                        assetPath: ''),
              )
                  .map(
                    (e) =>
                    CarouselCard(
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
                    (index) =>
                    Container(
                      width: 12,
                      height: 12,
                      margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (Theme
                              .of(context)
                              .colorScheme
                              .primary)),
                    ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: (MediaQuery
                      .of(context)
                      .size
                      .width * 0.025)),
              child: Text(
                '${localization.destinationsFrom}\n${localization
                    .tehran}${localization.comma} ${localization.iran}',
                style: Theme
                    .of(context)
                    .textTheme
                    .displayMedium,
              ),
            ),
            const SizedBox(height: 4),
            Center(
              child: SizedBox(
                width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.95,
                child: CarouselSlider(
                  disableGesture: true,
                  items: List.generate(
                    3,
                        (_) =>
                    const Destination(
                        id: -1,
                        city: '',
                        country: '',
                        assetPath: '',
                        minimumPrice: 0,
                        minimumPriceLow: 0,
                        originCity: '',
                        persianPrice: '',
                        persianPriceLow: '',
                    ),
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
                  horizontal: (MediaQuery
                      .of(context)
                      .size
                      .width * 0.025)),
              child: Text(
                localization.avaSideServices,
                style: Theme
                    .of(context)
                    .textTheme
                    .displayMedium,
              ),
            ),
            SizedBox(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
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
                  horizontal: (MediaQuery
                      .of(context)
                      .size
                      .width * 0.025)),
              child: Text(
                localization.popularDestinations,
                style: Theme
                    .of(context)
                    .textTheme
                    .displayMedium,
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

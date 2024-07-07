import 'package:ava_airline/src/features/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:ava_airline/src/features/home/domain/entities/carousel_entity.dart';
import 'package:ava_airline/src/features/home/domain/entities/city_entity.dart';
import 'package:ava_airline/src/features/home/domain/entities/destination_entity.dart';
import 'package:ava_airline/src/features/home/domain/entities/feature_entity.dart';
import 'package:ava_airline/src/features/home/presentation/pages/mobile/widgets/carousel_card.dart';
import 'package:ava_airline/src/features/home/presentation/pages/mobile/widgets/city_card.dart';
import 'package:ava_airline/src/features/home/presentation/pages/mobile/widgets/destination_card.dart';
import 'package:ava_airline/src/features/home/presentation/pages/mobile/widgets/feature_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({super.key});

  @override
  State<HomePageMobile> createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final cities = [
    const City(
        name: 'Tehran', assetPath: 'assets/image/1.png', description: ''),
    const City(
        name: 'Mashhad', assetPath: 'assets/image/2.png', description: ''),
    const City(name: 'Qeshm', assetPath: 'assets/image/3.png', description: ''),
    const City(name: 'Kish', assetPath: 'assets/image/4.png', description: ''),
  ];

  final carousels = [
    const Carousel(
      id: 1,
      title: 'خرید بلیط',
      assetPath: 'assets/image/home_page/home_page.png',
      description:
          'آوای آسمان شما را فرا می‌خواند؛ همین‌حالا پروازتان را رزرو کنید.',
    ),
    const Carousel(
      id: 2,
      title: 'خرید بلیط',
      assetPath: 'assets/image/home_page/home_page.png',
      description:
          'آوای آسمان شما را فرا می‌خواند؛ همین‌حالا پروازتان را رزرو کنید.',
    ),
    const Carousel(
      id: 3,
      title: 'خرید بلیط',
      assetPath: 'assets/image/home_page/home_page.png',
      description:
          'آوای آسمان شما را فرا می‌خواند؛ همین‌حالا پروازتان را رزرو کنید.',
    ),
  ];

  final destinations = [
    const Destination(
        id: 1,
        city: 'Ahvaz',
        country: 'Iran',
        assetPath: 'assets/image/ahvaz.jpg',
        minimumPrice: 500,
        originCity: 'Tehran'),
    const Destination(
        id: 1,
        city: 'Shiraz',
        country: 'Iran',
        assetPath: 'assets/image/shiraz.jpg',
        minimumPrice: 400,
        originCity: 'Tehran'),
    const Destination(
        id: 1,
        city: 'Isfahan',
        country: 'Iran',
        assetPath: 'assets/image/isfahan.jpg',
        minimumPrice: 350,
        originCity: 'Tehran'),
  ];

  final features = [
    const Feature(title: 'Hotels', assetPath: 'assets/image/hotel.png'),
    const Feature(title: 'Dining', assetPath: 'assets/image/dining.jpg'),
    const Feature(
        title: 'Flight entertainment',
        assetPath: 'assets/image/entertainment.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SingleChildScrollView(
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
                    margin:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).colorScheme.primary)
                            .withOpacity(_current == entry.key ? 1 : 0.4)),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 16),

            Padding(
              padding: EdgeInsets.only(
                  left: (MediaQuery.of(context).size.width * 0.025)),
              child: Text('Destinations from\nTehran, Iran',style: Theme.of(context).textTheme.displayMedium,),
            ),
            const SizedBox(height: 4),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width*0.95,
                child: CarouselSlider(
                  items: destinations
                      .map((e) => DestinationCard(destination: e))
                      .toList(),
                  options: CarouselOptions(
                      autoPlay: true, height: 200, viewportFraction: 0.7),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.only(
                  left: (MediaQuery.of(context).size.width * 0.025)),
              child: Text('AVA FLIGHT EXPERINCE',style: Theme.of(context).textTheme.displayMedium,),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: features.map((e) => FeatureCard(feature: e)).toList(),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.only(
                  left: (MediaQuery.of(context).size.width * 0.025)),
              child: Text('Popular destinations',style: Theme.of(context).textTheme.displayMedium,),
            ),
            const SizedBox(height: 4),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width*0.95,
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
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}

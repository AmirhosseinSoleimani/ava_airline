import 'package:ava_airline/src/features/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:ava_airline/src/features/home/domain/entities/carousel_entity.dart';
import 'package:ava_airline/src/features/home/domain/entities/city_entity.dart';
import 'package:ava_airline/src/features/home/presentation/pages/mobile/widgets/carousel_card.dart';
import 'package:ava_airline/src/features/home/presentation/pages/mobile/widgets/city_card.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Column(
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
            const SizedBox(
              height: 8,
            ),
            CarouselSlider(
              items: cities.map((e) => CityCard(city: e)).toList(),
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                  enlargeFactor: 0.35,
                  viewportFraction: 0.5),
            )
          ],
        ));
  }
}

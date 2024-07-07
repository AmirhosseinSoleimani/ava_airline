import 'package:ava_airline/src/features/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:ava_airline/src/features/home/domain/entities/city_entity.dart';
import 'package:ava_airline/src/features/home/presentation/pages/mobile/carousel_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePageMobile extends StatelessWidget {
  HomePageMobile({super.key});

  final cities = {
    const City(name: 'Tehran', asset: 'assets/image/1.png', description: ''),
    const City(name: 'Mashhad', asset: 'assets/image/2.png', description: ''),
    const City(name: 'Qeshm', asset: 'assets/image/3.png', description: ''),
    const City(name: 'Kish', asset: 'assets/image/4.png', description: ''),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              items: cities.map((e) => CarouselCard(city: e)).toList(),
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                  enlargeFactor: 0.35,
                  viewportFraction: 0.5
              ),
            )
          ],
        ));
  }
}

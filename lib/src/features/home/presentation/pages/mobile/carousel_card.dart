import 'package:ava_airline/src/features/home/domain/entities/city_entity.dart';
import 'package:flutter/material.dart';

class CarouselCard extends StatelessWidget {
  final City city;

  const CarouselCard({required this.city, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  child: Image.asset(
                    city.asset,
                    height: 250,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.transparent, Colors.black],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  height: 75,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 4, left: 4),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(city.name,
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  color:
                                      Colors.white)),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

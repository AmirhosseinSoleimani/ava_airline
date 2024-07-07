import 'package:ava_airline/src/features/home/domain/entities/carousel_entity.dart';
import 'package:flutter/material.dart';

class CarouselCard extends StatelessWidget {
  final Carousel carousel;

  const CarouselCard({required this.carousel, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Expanded(
              child: Image.asset(
                carousel.assetPath,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.only(top: 8, right: 16, bottom: 8,),
            width: MediaQuery.of(context).size.width,
            color: Colors.black.withOpacity(0.4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  carousel.title,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: Theme.of(context).colorScheme.onPrimary),
                ),
                 Text(
                    carousel.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary),
                  ),

              ],
            ),
          ),
        ),
      ],
    );
  }
}

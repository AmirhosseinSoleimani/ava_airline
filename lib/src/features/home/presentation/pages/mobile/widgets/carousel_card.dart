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
                height: 200,
                fit: BoxFit.fitHeight,
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.only(
              top: 8,
              right: 16,
              bottom: 8,
            ),
            width: MediaQuery.of(context).size.width,
            color: Colors.black.withOpacity(0.4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: carousel.id == 1
                      ? BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(12),
                        )
                      : null,
                  padding: carousel.id == 1
                      ? const EdgeInsets.symmetric(vertical: 8, horizontal: 16)
                      : EdgeInsets.zero,
                  child: Text(
                    carousel.title,
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  carousel.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.end,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Theme.of(context).colorScheme.onPrimary),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

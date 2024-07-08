import 'package:ava_airline/src/features/home/domain/entities/city_entity.dart';
import 'package:ava_airline/src/features/home/domain/entities/destination_entity.dart';
import 'package:flutter/material.dart';

class DestinationCard extends StatelessWidget {
  final Destination destination;

  const DestinationCard({required this.destination, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      width: MediaQuery.of(context).size.width * 0.9,
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(destination.assetPath,
                height: 125,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  destination.country,
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: Colors.grey.shade700),
                ),
                Text(
                  destination.city,
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                    children: <TextSpan>[
                      TextSpan(text: 'Economy from ' ),
                      TextSpan(text: '\$${destination.minimumPrice}',style:Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).colorScheme.primary
                      ), ),
                    ]
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

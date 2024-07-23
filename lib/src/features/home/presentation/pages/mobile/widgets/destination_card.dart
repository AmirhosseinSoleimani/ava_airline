import 'package:ava_airline/generated/l10n.dart';
import 'package:ava_airline/src/features/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:ava_airline/src/features/home/domain/entities/destination_entity.dart';
import 'package:flutter/material.dart';

class DestinationCard extends StatelessWidget {
  final Destination destination;
  final bool? isOffer;

  const DestinationCard({required this.destination, this.isOffer, super.key});

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context).languageCode;

    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          width: MediaQuery.of(context).size.width * 0.9,
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(12)),
                child: destination.assetPath == ''
                    ? Container(
                        height: 125, width: MediaQuery.of(context).size.width)
                    : Image.asset(destination.assetPath,
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
                    FittedBox(
                      child: RichText(
                        text: TextSpan(
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.w400,
                                    ),
                            children: <TextSpan>[
                              TextSpan(text: S.of(context).economyFrom),
                              TextSpan(
                                text: locale == 'fa'
                                    ? ' ${destination.persianPrice}'
                                    : '\$${destination.minimumPrice}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        decoration: isOffer == true
                                            ? TextDecoration.lineThrough
                                            : TextDecoration.none,
                                        decorationColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        decorationThickness: 3,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary),
                              ),
                              if (isOffer == true)
                                TextSpan(
                                  text: locale == 'fa'
                                      ? ' ${destination.persianPriceLow}'
                                      : ' \$${destination.minimumPriceLow}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary),
                                )
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        if (isOffer == true)
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              padding: const EdgeInsets.all(4),
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: Colors.red.shade600,
                borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white,width: 1)
              ),
              child: const FittedBox(
                  child: Text(
                '-10%',
                textDirection: TextDirection.ltr,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),
            ),
          )
      ],
    );
  }
}

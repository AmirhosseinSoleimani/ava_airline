import 'package:ava_airline/generated/l10n.dart';
import 'package:ava_airline/src/features/book_flight/book_flight.dart';
import 'package:ava_airline/src/features/home/presentation/pages/mobile/widgets/destination_card.dart';
import 'package:ava_airline/src/features/home/presentation/pages/mobile/widgets/drawer/drawer_widget.dart';
import 'package:ava_airline/src/features/profile/tier_entity.dart';
import 'package:ava_airline/src/shared/resources/localization/locale_provider.dart';
import 'package:ava_airline/src/shared/resources/theme/bloc/theme_cubit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../home/domain/entities/destination_entity.dart';

class ProfilePage extends StatefulWidget {
  static const profilePageName = 'profile-page';
  static const profilePagePath = '/profile-page';

  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int tierIndex = 0;

  @override
  Widget build(BuildContext context) {
    final localization = S.of(context);
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
    ];
    List<Tier> tierList = [
      Tier(
        path: 'assets/image/blue.jpg',
        name: S.of(context).blue,
        minMile: 0,
        benefits: [
          S.of(context).benefit1,
          S.of(context).benefit2,
        ],
      ),
      Tier(
        path: 'assets/image/bronze.jpg',
        name: S.of(context).bronze,
        minMile: 1000,
        benefits: [
          S.of(context).benefit3,
          S.of(context).benefit4,
          S.of(context).plusBlue,
        ],
      ),
      Tier(
        path: 'assets/image/silver.jpg',
        name: S.of(context).silver,
        minMile: 2000,
        benefits: [
          S.of(context).benefit5,
          S.of(context).benefit6,
          S.of(context).plusBronze,
        ],
      ),
      Tier(
        path: 'assets/image/gold.jpg',
        name: S.of(context).gold,
        minMile: 5000,
        benefits: [
          S.of(context).benefit7,
          S.of(context).benefit8,
          S.of(context).plusSilver,
        ],
      ),
    ];
    final localeProvider = context.read<LocaleProvider>();
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  context.read<ThemeCubit>().toggleTier();
                  if (tierIndex == 3) {
                    tierIndex = 0;
                  } else {
                    tierIndex++;
                  }
                });
              },
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/image/avatar.png'),
                maxRadius: 30,
              ),
            ),
            const SizedBox(width: 12),
            const Text('Soroush Beigi'),
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        surfaceTintColor: Theme.of(context).colorScheme.surfaceTint,
        toolbarHeight: 120,
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset(
            tierList[tierIndex].path,
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            context
                                .read<ThemeCubit>()
                                .tier
                                .currentMile
                                .toString(),
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          const SizedBox(height: 4),
                          Text(localization.milesFlown),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 0.5,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            tierList[tierIndex].name ?? '',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          const SizedBox(height: 4),
                          Text(localization.tier),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
             if(context.read<ThemeCubit>().tier.name!='Gold') Row(
                children: [
                  Text(localization.currentTier,textAlign: TextAlign.center,),
                  const SizedBox(width: 4),
                  Expanded(
                    child: LinearProgressIndicator(
                      value: context.read<ThemeCubit>().tier.currentMile! /
                          context.read<ThemeCubit>().nextTier.minMile,
                      backgroundColor: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(localization.nextTier,textAlign: TextAlign.center,),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.24,
                  child: Row(
                    children: [
                      Expanded(
                        child: Card(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: context
                                  .read<ThemeCubit>()
                                  .tier
                                  .color!
                                  .withOpacity(0.4),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  localization.currentBenefits,
                                  style:
                                      Theme.of(context).textTheme.displayLarge,
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: tierList[tierIndex]
                                      .benefits!
                                      .map(
                                        (e) => Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 4),
                                          child: Text(e),
                                        ),
                                      )
                                      .toList(),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: context.read<ThemeCubit>().tier.name == 'Gold'
                            ? const SizedBox()
                            : Card(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: context
                                        .read<ThemeCubit>()
                                        .nextTier
                                        .color!
                                        .withOpacity(0.4),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16, horizontal: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        localization.nextBenefits,
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge,
                                      ),
                                      const SizedBox(height: 8),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: tierList[nextTier(tierIndex)]
                                            .benefits!
                                            .map(
                                              (e) => Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 4),
                                                child: Text(e),
                                              ),
                                            )
                                            .toList(),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  localization.yourOffers,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: CarouselSlider(
                    items: destinations
                        .map((e) =>
                            DestinationCard(destination: e, isOffer: true))
                        .toList(),
                    options: CarouselOptions(
                        autoPlay: true, height: 200, viewportFraction: 0.7),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(4),
                height: 60,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          S.of(context).changeLanguage,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: DropdownButton(
                            value: S.of(context).currentLanguage,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            items: const [
                              DropdownMenuItem(
                                value: 'fa',
                                child: Text('fa'),
                              ),
                              DropdownMenuItem(
                                value: 'en',
                                child: Text('en'),
                              ),
                              DropdownMenuItem(
                                value: 'ar',
                                child: Text('ar'),
                              ),
                            ],
                            onChanged: (newValue) {
                              localeProvider.changeLocale(
                                  Locale(newValue?.toString() ?? 'fa'));
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              GestureDetector(
                onTap: () =>
                    SystemChannels.platform.invokeMethod('SystemNavigator.pop'),
                child: SizedBox(
                  height: 60,
                  child: Card(
                    color: Theme.of(context).colorScheme.primary,
                    child: Center(
                        child: Text(
                      localization.logout,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontWeight: FontWeight.w500,
                          ),
                    )),
                  ),
                ),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }

  int nextTier(int tier) {
    if (tier == 3) {
      return 0;
    } else {
      return tier + 1;
    }
  }
}

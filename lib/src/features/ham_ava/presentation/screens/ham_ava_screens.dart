import 'package:ava_airline/src/shared/resources/theme/bloc/theme_cubit.dart';
import 'package:flutter/material.dart';
import '../../../../../generated/l10n.dart';
import '../../../../shared/footer/footer_widget.dart';
import '../../../app/my_app.dart';
import '../../../bottom_navigation_bar/bottom_navigation_bar.dart';
import '../../../home/domain/entities/special_fare_entity.dart';
import '../../../home/presentation/pages/web/components/special_trips/special_trips_container.dart';
import '../../../profile/tier_entity.dart';

class HamAvaScreens extends StatefulWidget {
  static const hamAvaPageName = 'hamAva-page';
  static const hamAvaPagePath = '/hamAva-page';

  const HamAvaScreens({super.key});

  @override
  State<HamAvaScreens> createState() => _HamAvaScreensState();
}

class _HamAvaScreensState extends State<HamAvaScreens> {
  int tierIndex = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final localization = S.of(context);
    final locale = Localizations.localeOf(context).languageCode;
    List<HoverImageCardEntity> hoverImageCardEntity = [
      HoverImageCardEntity(
          title: locale.contains('en') ? 'Tehran' : 'تهران',
          date: locale.contains('en')
              ? '24 Oct 2024 - 29 Oct 2024'
              : '11 مرداد 1403 - 15 مرداد 1403',
          price: locale.contains('en')
              ? '10,300,000 IRR'
              : '10,300,000 ریال',
          offPrice: locale.contains('en') ? '9,270,000 IRR' : '9,270,000 ریال',
          typeFlight: locale.contains('en') ? 'Business from Tehran' :'بیزینس از تهران',
          imageUrl: ImageManager.tehran,
          isHover: false),
      HoverImageCardEntity(
          title: locale.contains('en') ? 'Mashhad' : 'مشهد',
          date: locale.contains('en')
              ? '11 Jul 2024 - 17 Jul 2024'
              : '1 مرداد 1403 - 5 مرداد 1403',
          price: locale.contains('en')
              ? '10,280,000 IRR'
              : '10,280,000 ریال',
          offPrice: locale.contains('en') ? '9,252,000 IRR' : '9,252,000 ریال',
          typeFlight: locale.contains('en') ? 'Business from Tehran' : 'بیزینس از تهران',
          imageUrl: ImageManager.mashhad,
          isHover: false),
      HoverImageCardEntity(
          title: locale.contains('en') ? 'Kish' : 'کیش',
          date: locale.contains('en')
              ? '24 Dec 2024 - 22 Jan 2025'
              : '2 مرداد 1403 - 6 مرداد 1403',
          price: locale.contains('en')
              ? '10,720,00. IRR'
              : '10,720,000 ریال',
          offPrice: locale.contains('en') ? '9,648,000 IRR' :  '9,648,000 ریال',
          typeFlight: locale.contains('en') ? 'Business from Tehran' : 'بیزینس از تهران',
          imageUrl: ImageManager.kish,
          isHover: false),
      HoverImageCardEntity(
          title: locale.contains('en') ? 'Qeshm' : 'قشم',
          date: locale.contains('en')
              ? '10 Sep 2024 - 10 Oct 2024'
              : '19 مرداد 1403 - 22 مرداد 1403',
          price: locale.contains('en')
              ? '10,700,000 IRR'
              : '10,700,000 ریال',
          offPrice: locale.contains('en') ?  '9,630,000 IRR' :  '9,630,000 ریال',
          typeFlight: locale.contains('en') ? 'Business from Tehran' : 'بیزینس از تهران',
          imageUrl: ImageManager.qeshm,
          isHover: false),
      HoverImageCardEntity(
          title: locale.contains('en') ? 'Ahvaz' : 'اهواز',
          date: locale.contains('en')
              ? '11 Jul 2024 - 16 Jul 2024'
              : '20 مرداد 1403 - 24 مرداد 1403',
          price: locale.contains('en')
              ? '10,400,000 IRR'
              : '10,400,000 ریال',
          offPrice: locale.contains('en') ? '9,360,000 IRR' : '9,360,000 ریال',
          typeFlight: locale.contains('en') ? 'Business from Tehran' : 'بیزینس از تهران',
          imageUrl: ImageManager.ahvaz,
          isHover: false),
      HoverImageCardEntity(
          title: locale.contains('en') ? 'Shiraz' : 'شیراز',
          date: locale.contains('en')
              ? '17 Sep 2024 - 22 Sep 2024'
              : '10 مرداد 1403 - 818 مرداد 1403',
          price: locale.contains('en')
              ? '10,500,000 IRR'
              : '10,500,000 ریال',
          offPrice: locale.contains('en') ? '9,450,000 IRR' : '9,450,000 ریال',
          typeFlight: locale.contains('en') ? 'Business from Tehran' : 'بیزینس از تهران',
          imageUrl: ImageManager.shiraz,
          isHover: false),
      HoverImageCardEntity(
          title: locale.contains('en') ? 'Isfahan' : 'اصفهان',
          date: locale.contains('en')
              ? '29 Aug 2024 - 03 Sep 2024'
              : '4 مرداد 1403 - 8 مرداد 1403',
          price: locale.contains('en')
              ? '10,300,000 IRR'
              : '10,300,000 ریال',
          offPrice: locale.contains('en') ? '9,270,000 IRR' : '9,270,000 ریال',
          typeFlight: locale.contains('en') ? 'Business from Tehran' : 'بیزینس از تهران',
          imageUrl: ImageManager.isfahan,
          isHover: false),
    ];
    List<Tier> tierList = [
      Tier(
        path: 'assets/image/blue.jpg',
        name: S.of(context).blue,
        minMile: 0,
        currentMile: 600,
        benefits: [
          S.of(context).benefit1,
          S.of(context).benefit2,
        ],
      ),
      Tier(
        path: 'assets/image/bronze.jpg',
        name: S.of(context).bronze,
        minMile: 1000,
        currentMile: 1850,
        benefits: [
          S.of(context).benefit1,
          S.of(context).benefit2,
          S.of(context).benefit3,
          S.of(context).benefit4,
        ],
      ),
      Tier(
        path: 'assets/image/silver.jpg',
        name: S.of(context).silver,
        minMile: 2000,
        currentMile: 2550,
        benefits: [
          S.of(context).benefit1,
          S.of(context).benefit2,
          S.of(context).benefit3,
          S.of(context).benefit4,
          S.of(context).benefit5,
          S.of(context).benefit6,
        ],
      ),
      Tier(
        path: 'assets/image/gold.jpg',
        name: S.of(context).gold,
        minMile: 5000,
        currentMile: 5650,
        benefits: [
          S.of(context).benefit1,
          S.of(context).benefit2,
          S.of(context).benefit3,
          S.of(context).benefit4,
          S.of(context).benefit5,
          S.of(context).benefit6,
          S.of(context).benefit7,
          S.of(context).benefit8,
        ],
      ),
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Theme.of(context).colorScheme.onPrimary,
              width: double.infinity,
              height: 80,
              child: (width > 1024)
                  ? NavbarComponent(
                      color: Theme.of(context).colorScheme.onSurface,
                    )
                  : Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(AppPadding.p16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                scaffoldKey.currentState?.openDrawer();
                              },
                              child: Icon(
                                IconManager.density,
                                size: AppSize.s24,
                                color: Theme.of(context).colorScheme.onSurface,
                              ),
                            ),
                            Space.w16,
                            SvgPicture.asset(SvgManager.avaAirLineLogoSvg,
                                width: AppSize.s60,
                                height: AppSize.s60,
                                colorFilter: ColorFilter.mode(
                                    Theme.of(context).colorScheme.onSurface,
                                    BlendMode.srcIn)),
                          ],
                        ),
                      ),
                    ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppPadding.p24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'هم آوا:',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 280,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppPadding.p24, vertical: AppPadding.p12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'مزایای فعلی:',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  Space.h16,
                                  Expanded(
                                    child: GridView.builder(
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 4,
                                                crossAxisSpacing: 16.0,
                                                mainAxisSpacing: 24.0,
                                                childAspectRatio: 6),
                                        itemCount: tierList[tierIndex]
                                            .benefits
                                            ?.length,
                                        itemBuilder: (context, index) {
                                          return Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: AppSize.s8,
                                                height: AppSize.s16,
                                                decoration: BoxDecoration(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .primary,
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    AppSize
                                                                        .s16))),
                                              ),
                                              Space.w8,
                                              Text(
                                                '${tierList[tierIndex].benefits?[index]}',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium,
                                              ),
                                            ],
                                          );
                                        }),
                                  ),
                                ],
                              )),
                          const Expanded(child: SizedBox()),
                          Space.w16,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
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
                                child: Container(
                                  width: 400,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: AppSize.s1,
                                      color:
                                          Theme.of(context).colorScheme.onSecondary,
                                    ),
                                    borderRadius:
                                        BorderRadius.circular(AppSize.s12),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Theme.of(context).colorScheme.surface,
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: const Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(AppSize.s12),
                                          child: Image.asset(
                                            tierList[tierIndex].path,
                                            fit: BoxFit.cover,
                                            width: 480,
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: AppPadding.p12,
                                            bottom: AppPadding.p16),
                                        child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Text(locale.contains('en') ? 'ََAmirhossein Soleimani' :'امیرحسین سلیمانی',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: AppPadding.p12,
                                            right: AppPadding.p12),
                                        child: Align(
                                            alignment: Alignment.topRight,
                                            child: Text('هواپیمایی آوا',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: AppPadding.p12,
                                            bottom: AppPadding.p16),
                                        child: Align(
                                            alignment: Alignment.bottomRight,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text(tierList[tierIndex].currentMile.toString(),
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium),
                                                Space.h8,
                                                Text(tierList[tierIndex].name.toString(),
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium)
                                              ],
                                            )),
                                      ),
                                      Opacity(
                                        opacity: 0.2,
                                        child: Align(
                                            alignment: Alignment.center,
                                            child: Image.asset(
                                              'assets/image/ava.png',
                                              width: 340,
                                              height: 180,
                                              fit: BoxFit.contain,
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Space.h12,
                              Expanded(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: AppSize.s8,
                                      height: AppSize.s16,
                                      decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          borderRadius:
                                          const BorderRadius.only(
                                              topLeft:
                                              Radius.circular(
                                                  AppSize
                                                      .s16))),
                                    ),
                                    Space.w8,
                                    Text('به ازای هر مایل 1 امتیاز دریافت می کنید', style: Theme.of(context).textTheme.bodyMedium,),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppPadding.p24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'تخفیف های شما:',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Space.h16,
                  Row(
                    children: [
                      Expanded(
                          child: SpecialTripsContainer(
                        hoverImageCardEntity: hoverImageCardEntity[2],
                        isSmall: true,
                        isOff: true,
                      )),
                      Expanded(
                          child: SpecialTripsContainer(
                        hoverImageCardEntity: hoverImageCardEntity[3],
                        isSmall: true,
                        isOff: true,
                      )),
                      Expanded(
                          child: SpecialTripsContainer(
                        hoverImageCardEntity: hoverImageCardEntity[4],
                        isSmall: true,
                        isOff: true,
                      )),
                      Expanded(
                          child: SpecialTripsContainer(
                        hoverImageCardEntity: hoverImageCardEntity[5],
                        isSmall: true,
                        isOff: true,
                      ))
                    ],
                  ),
                ],
              ),
            ),
            Space.h64,
            Padding(
              padding: const EdgeInsets.all(AppPadding.p24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('تورهای شما:', style: Theme.of(context).textTheme.headlineLarge,),
                  Space.h12,
                  SizedBox(
                    width: double.infinity,
                    height: 400,
                    child: Row(
                      children: [
                        const Expanded(child: SizedBox()),
                        Expanded(
                            flex: 6,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(AppSize.s12),
                                border: Border.all(
                                  width: AppSize.s2,
                                  color: ColorLightThemeManager.grey
                                )
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(AppPadding.p16),
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 2,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: AppSize.s8,
                                                  height: AppSize.s16,
                                                  decoration: BoxDecoration(
                                                      color: Theme.of(context).colorScheme.primary,
                                                      borderRadius: const BorderRadius.only(
                                                          topLeft: Radius.circular(AppSize.s16))),
                                                ),
                                                Space.w8,
                                                Text(
                                                  'هتل 4 ستاره',
                                                  style: Theme.of(context).textTheme.titleMedium,
                                                ),
                                              ],
                                            ),
                                            Space.h12,
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: AppSize.s8,
                                                  height: AppSize.s16,
                                                  decoration: BoxDecoration(
                                                      color: Theme.of(context).colorScheme.primary,
                                                      borderRadius: const BorderRadius.only(
                                                          topLeft: Radius.circular(AppSize.s16))),
                                                ),
                                                Space.w8,
                                                Text(
                                                  'اتاق استاندارد دو تخته',
                                                  style: Theme.of(context).textTheme.titleMedium,
                                                ),
                                              ],
                                            ),
                                            Space.h12,
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: AppSize.s8,
                                                  height: AppSize.s16,
                                                  decoration: BoxDecoration(
                                                      color: Theme.of(context).colorScheme.primary,
                                                      borderRadius: const BorderRadius.only(
                                                          topLeft: Radius.circular(AppSize.s16))),
                                                ),
                                                Space.w8,
                                                Text(
                                                  'همراه با صبحانه',
                                                  style: Theme.of(context).textTheme.titleMedium,
                                                ),
                                              ],
                                            ),
                                            Space.h12,
                                            Row(
                                              children: [
                                                Text('71,500,000 ریال', style: Theme.of(context).textTheme.titleMedium?.copyWith(decoration: TextDecoration.lineThrough),),
                                                Space.w8,
                                                Container(
                                                  width: 60,
                                                  height: 28,
                                                  decoration: BoxDecoration(
                                                      color: Theme.of(context).colorScheme.primary,
                                                      borderRadius: BorderRadius.circular(AppSize.s16)
                                                  ),
                                                  child: Center(child: Text('10%', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary),)),
                                                )
                                              ],
                                            ),
                                            Space.h12,
                                            Text('64,350,000 ریال', style: Theme.of(context).textTheme.titleMedium,),
                                            const Spacer(),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
                                              child: AvaElevatedButton(
                                                onTap: () {},
                                                title: 'رزرو و مشاهده بیشتر...',
                                                style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
                                              ),
                                            )
                                          ],
                                        )),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        height: 400,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(AppSize.s12),
                                            border: Border.all(
                                                width: AppSize.s1,
                                                color: ColorLightThemeManager.grey)),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(AppSize.s12),
                                            child: Image.asset(
                                              ImageManager.mashhad,
                                              fit: BoxFit.cover,
                                              height: 400,
                                            )),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(AppSize.s12),
                                                    border: Border.all(
                                                        width: AppSize.s1,
                                                        color: ColorLightThemeManager.grey)),
                                                child: ClipRRect(
                                                    borderRadius:
                                                    BorderRadius.circular(AppSize.s12),
                                                    child: Image.asset('assets/image/h1.jpeg'))),
                                          ),
                                          Space.h12,
                                          Expanded(
                                            child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(AppSize.s12),
                                                    border: Border.all(
                                                        width: AppSize.s1,
                                                        color: ColorLightThemeManager.grey)),
                                                child: ClipRRect(
                                                    borderRadius:
                                                    BorderRadius.circular(AppSize.s12),
                                                    child: Image.asset('assets/image/h2.jpeg'))),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ),
                        const Expanded(child: SizedBox()),
                      ],
                    ),
                  ),
                  Space.h32,
                  SizedBox(
                    width: double.infinity,
                    height: 400,
                    child: Row(
                      children: [
                        const Expanded(child: SizedBox()),
                        Expanded(
                            flex: 6,
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(AppSize.s12),
                                    border: Border.all(
                                        width: AppSize.s2,
                                        color: ColorLightThemeManager.grey
                                    )
                                ),
                              child: Padding(
                                padding: const EdgeInsets.all(AppPadding.p16),
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 2,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: AppSize.s8,
                                                  height: AppSize.s16,
                                                  decoration: BoxDecoration(
                                                      color: Theme.of(context).colorScheme.primary,
                                                      borderRadius: const BorderRadius.only(
                                                          topLeft: Radius.circular(AppSize.s16))),
                                                ),
                                                Space.w8,
                                                Text(
                                                  'هتل 4 ستاره',
                                                  style: Theme.of(context).textTheme.titleMedium,
                                                ),
                                              ],
                                            ),
                                            Space.h12,
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: AppSize.s8,
                                                  height: AppSize.s16,
                                                  decoration: BoxDecoration(
                                                      color: Theme.of(context).colorScheme.primary,
                                                      borderRadius: const BorderRadius.only(
                                                          topLeft: Radius.circular(AppSize.s16))),
                                                ),
                                                Space.w8,
                                                Text(
                                                  'اتاق استاندارد دو تخته',
                                                  style: Theme.of(context).textTheme.titleMedium,
                                                ),
                                              ],
                                            ),
                                            Space.h12,
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: AppSize.s8,
                                                  height: AppSize.s16,
                                                  decoration: BoxDecoration(
                                                      color: Theme.of(context).colorScheme.primary,
                                                      borderRadius: const BorderRadius.only(
                                                          topLeft: Radius.circular(AppSize.s16))),
                                                ),
                                                Space.w8,
                                                Text(
                                                  'همراه با صبحانه',
                                                  style: Theme.of(context).textTheme.titleMedium,
                                                ),
                                              ],
                                            ),
                                            Space.h12,
                                            Row(
                                              children: [
                                                Text('71,500,000 ریال', style: Theme.of(context).textTheme.titleMedium?.copyWith(decoration: TextDecoration.lineThrough),),
                                                Space.w8,
                                                Container(
                                                  width: 60,
                                                  height: 28,
                                                  decoration: BoxDecoration(
                                                      color: Theme.of(context).colorScheme.primary,
                                                      borderRadius: BorderRadius.circular(AppSize.s16)
                                                  ),
                                                  child: Center(child: Text('10%', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary),)),
                                                )
                                              ],
                                            ),
                                            Space.h12,
                                            Text('64,350,000 ریال', style: Theme.of(context).textTheme.titleMedium,),
                                            const Spacer(),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
                                              child: AvaElevatedButton(
                                                onTap: () {},
                                                title: 'رزرو و مشاهده بیشتر...',
                                                style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
                                              ),
                                            )
                                          ],
                                        )),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        height: 400,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(AppSize.s12),
                                            border: Border.all(
                                                width: AppSize.s1,
                                                color: ColorLightThemeManager.grey)),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(AppSize.s12),
                                            child: Image.asset(
                                              ImageManager.mashhad,
                                              fit: BoxFit.cover,
                                              height: 400,
                                            )),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(AppSize.s12),
                                                    border: Border.all(
                                                        width: AppSize.s1,
                                                        color: ColorLightThemeManager.grey)),
                                                child: ClipRRect(
                                                    borderRadius:
                                                    BorderRadius.circular(AppSize.s12),
                                                    child: Image.asset('assets/image/h1.jpeg'))),
                                          ),
                                          Space.h12,
                                          Expanded(
                                            child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(AppSize.s12),
                                                    border: Border.all(
                                                        width: AppSize.s1,
                                                        color: ColorLightThemeManager.grey)),
                                                child: ClipRRect(
                                                    borderRadius:
                                                    BorderRadius.circular(AppSize.s12),
                                                    child: Image.asset('assets/image/h2.jpeg'))),
                                          ),
                                        ],
                                      ),
                                    ),
                                    ],
                                ),
                              ),
                            ),
                        ),
                        const Expanded(child: SizedBox()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Space.h64,
            Text(
              'مزایای عضویت در باشگاه هم آوا',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Space.h8,
            Text(
              'امتیاز و لحظات به یاد ماندنی را با هم آوا داشته باشید',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Space.h24,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Expanded(child: SizedBox()),
                      const Expanded(child: SizedBox()),
                      Expanded(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(AppPadding.p16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: AppSize.s60,
                                  height: AppSize.s60,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle),
                                  child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(AppSize.s64),
                                      child: Image.asset(
                                        'assets/image/blue.jpg',
                                        fit: BoxFit.cover,
                                      )),
                                ),
                                Space.h8,
                                Text(
                                  localization.blue,
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Column(
                            children: [
                              Container(
                                width: AppSize.s60,
                                height: AppSize.s60,
                                decoration:
                                    const BoxDecoration(shape: BoxShape.circle),
                                child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(AppSize.s64),
                                    child: Image.asset(
                                      'assets/image/bronze.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Space.h8,
                              Text(
                                localization.bronze,
                                style: Theme.of(context).textTheme.bodyMedium,
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Column(
                            children: [
                              Container(
                                width: AppSize.s60,
                                height: AppSize.s60,
                                decoration:
                                    const BoxDecoration(shape: BoxShape.circle),
                                child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(AppSize.s64),
                                    child: Image.asset(
                                      'assets/image/silver.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Space.h8,
                              Text(
                                localization.silver,
                                style: Theme.of(context).textTheme.bodyMedium,
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Column(
                            children: [
                              Container(
                                width: AppSize.s60,
                                height: AppSize.s60,
                                decoration:
                                    const BoxDecoration(shape: BoxShape.circle),
                                child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(AppSize.s64),
                                    child: Image.asset(
                                      'assets/image/gold.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Space.h8,
                              Text(
                                localization.gold,
                                style: Theme.of(context).textTheme.bodyMedium,
                              )
                            ],
                          ),
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                  Row(
                    children: [
                      const Expanded(child: SizedBox()),
                      Expanded(
                        child: Center(
                            child: Text(localization.benefit1,
                                style:
                                    Theme.of(context).textTheme.titleMedium)),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                          IconManager.check,
                          color: Colors.green,
                          size: AppSize.s24,
                        )),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                          IconManager.check,
                          color: Colors.green,
                          size: AppSize.s24,
                        )),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                          IconManager.check,
                          color: Colors.green,
                          size: AppSize.s24,
                        )),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                          IconManager.check,
                          color: Colors.green,
                          size: AppSize.s24,
                        )),
                      ),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                  Space.h8,
                  const Row(
                    children: [
                      Expanded(child: SizedBox()),
                      Expanded(flex: 6, child: Divider()),
                      Expanded(child: SizedBox()),
                    ],
                  ),
                  Space.h8,
                  Row(
                    children: [
                      const Expanded(child: SizedBox()),
                      Expanded(
                        child: Center(
                          child: Text(localization.benefit2,
                              style: Theme.of(context).textTheme.titleMedium),
                        ),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                              IconManager.check,
                              color: Colors.green,
                              size: AppSize.s24,
                            )),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                              IconManager.check,
                              color: Colors.green,
                              size: AppSize.s24,
                            )),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                              IconManager.check,
                              color: Colors.green,
                              size: AppSize.s24,
                            )),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                          IconManager.check,
                          color: Colors.green,
                          size: AppSize.s24,
                        )),
                      ),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                  Space.h8,
                  const Row(
                    children: [
                      Expanded(child: SizedBox()),
                      Expanded(flex: 6, child: Divider()),
                      Expanded(child: SizedBox()),
                    ],
                  ),
                  Space.h8,
                  Row(
                    children: [
                      const Expanded(child: SizedBox()),
                      Expanded(
                        child: Center(
                          child: Text(localization.benefit3,
                              style: Theme.of(context).textTheme.titleMedium),
                        ),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                          IconManager.close,
                          color: Colors.red,
                          size: AppSize.s24,
                        )),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                              IconManager.check,
                              color: Colors.green,
                              size: AppSize.s24,
                            )),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                          IconManager.check,
                          color: Colors.green,
                          size: AppSize.s24,
                        )),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                          IconManager.check,
                          color: Colors.green,
                          size: AppSize.s24,
                        )),
                      ),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                  Space.h8,
                  const Row(
                    children: [
                      Expanded(child: SizedBox()),
                      Expanded(flex: 6, child: Divider()),
                      Expanded(child: SizedBox()),
                    ],
                  ),
                  Space.h8,
                  Row(
                    children: [
                      const Expanded(child: SizedBox()),
                      Expanded(
                        child: Center(
                            child: Text(localization.benefit4,
                                style:
                                    Theme.of(context).textTheme.titleMedium)),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                          IconManager.close,
                          color: Colors.red,
                          size: AppSize.s24,
                        )),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                          IconManager.check,
                          color: Colors.green,
                          size: AppSize.s24,
                        )),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                          IconManager.check,
                          color: Colors.green,
                          size: AppSize.s24,
                        )),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                          IconManager.check,
                          color: Colors.green,
                          size: AppSize.s24,
                        )),
                      ),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                  Space.h8,
                  const Row(
                    children: [
                      Expanded(child: SizedBox()),
                      Expanded(flex: 6, child: Divider()),
                      Expanded(child: SizedBox()),
                    ],
                  ),
                  Space.h8,
                  Row(
                    children: [
                      const Expanded(child: SizedBox()),
                      Expanded(
                        child: Center(
                            child: Text(localization.benefit5,
                                style:
                                    Theme.of(context).textTheme.titleMedium)),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                              IconManager.close,
                              color: Colors.red,
                              size: AppSize.s24,
                            )),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                              IconManager.close,
                              color: Colors.red,
                              size: AppSize.s24,
                            )),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                          IconManager.check,
                          color: Colors.green,
                          size: AppSize.s24,
                        )),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                          IconManager.check,
                          color: Colors.green,
                          size: AppSize.s24,
                        )),
                      ),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                  Space.h8,
                  const Row(
                    children: [
                      Expanded(child: SizedBox()),
                      Expanded(flex: 6, child: Divider()),
                      Expanded(child: SizedBox()),
                    ],
                  ),
                  Space.h8,
                  Row(
                    children: [
                      const Expanded(child: SizedBox()),
                      Expanded(
                        child: Center(
                          child: Text(localization.benefit6,
                              style: Theme.of(context).textTheme.titleMedium),
                        ),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                          IconManager.close,
                          color: Colors.red,
                          size: AppSize.s24,
                        )),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                          IconManager.close,
                          color: Colors.red,
                          size: AppSize.s24,
                        )),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                              IconManager.check,
                              color: Colors.green,
                              size: AppSize.s24,
                            )),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                          IconManager.check,
                          color: Colors.green,
                          size: AppSize.s24,
                        )),
                      ),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                  Space.h8,
                  const Row(
                    children: [
                      Expanded(child: SizedBox()),
                      Expanded(flex: 6, child: Divider()),
                      Expanded(child: SizedBox()),
                    ],
                  ),
                  Space.h8,
                  Row(
                    children: [
                      const Expanded(child: SizedBox()),
                      Expanded(
                        child: Center(
                          child: Text(localization.benefit7,
                              style: Theme.of(context).textTheme.titleMedium),
                        ),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                          IconManager.close,
                          color: Colors.red,
                          size: AppSize.s24,
                        )),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                              IconManager.close,
                              color: Colors.red,
                              size: AppSize.s24,
                            )),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                              IconManager.close,
                              color: Colors.red,
                              size: AppSize.s24,
                            )),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                          IconManager.check,
                          color: Colors.green,
                          size: AppSize.s24,
                        )),
                      ),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                  Space.h8,
                  const Row(
                    children: [
                      Expanded(child: SizedBox()),
                      Expanded(flex: 6, child: Divider()),
                      Expanded(child: SizedBox()),
                    ],
                  ),
                  Space.h8,
                  Row(
                    children: [
                      const Expanded(child: SizedBox()),
                      Expanded(
                        child: Center(
                            child: Text(localization.benefit8,
                                style:
                                    Theme.of(context).textTheme.titleMedium)),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                          IconManager.close,
                          color: Colors.red,
                          size: AppSize.s24,
                        )),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                          IconManager.close,
                          color: Colors.red,
                          size: AppSize.s24,
                        )),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                              IconManager.close,
                              color: Colors.red,
                              size: AppSize.s24,
                            )),
                      ),
                      const Expanded(
                        child: Center(
                            child: Icon(
                          IconManager.check,
                          color: Colors.green,
                          size: AppSize.s24,
                        )),
                      ),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                  Space.h8,
                  const Row(
                    children: [
                      Expanded(child: SizedBox()),
                      Expanded(flex: 6, child: Divider()),
                      Expanded(child: SizedBox()),
                    ],
                  ),
                  Space.h8,
                ],
              ),
            ),
            Space.h64,
            SizedBox(
              height: 380,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Expanded(
                  flex: 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: AppSize.s8,
                            height: AppSize.s16,
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(AppSize.s16)
                                )

                            ),
                          ),
                          Space.w8,
                          Text(localization.sliderTitle1, style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Space.h8,
                      Text(localization.sliderDesc1, style: Theme.of(context).textTheme.bodyMedium,),
                      Space.h8,
                      const Padding(
                        padding: EdgeInsets.only(left: AppSize.s80),
                        child: Divider(),
                      ),
                      Space.h8,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: AppSize.s8,
                            height: AppSize.s16,
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(AppSize.s16)
                                )

                            ),
                          ),
                          Space.w8,
                          Text(localization.sliderTitle2, style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Space.h8,
                      Text(localization.sliderDesc2, style: Theme.of(context).textTheme.bodyMedium),
                      Space.h8,
                      const Padding(
                        padding: EdgeInsets.only(left: AppSize.s80),
                        child: Divider(),
                      ),
                      Space.h8,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: AppSize.s8,
                            height: AppSize.s16,
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(AppSize.s16)
                                )

                            ),
                          ),
                          Space.w8,
                          Text(localization.sliderTitle3, style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Space.h8,
                      Text(localization.sliderDesc3, style: Theme.of(context).textTheme.bodyMedium)
                    ],
                  ),
                ),
                Space.w16,
                Expanded(
                  flex: 5,
                  child: Row(
                    children: [
                      Expanded(child: ClipRRect(
                          borderRadius: BorderRadius.circular(AppSize.s12),
                          child: Image.asset('assets/image/slider1.jpg'))),
                      Space.w12,
                      Column(
                        children: [
                          Expanded(child: ClipRRect(
                              borderRadius: BorderRadius.circular(AppSize.s12),
                              child: Image.asset('assets/image/hotel.png'))),
                          Space.h12,
                          Expanded(child: ClipRRect(
                              borderRadius: BorderRadius.circular(AppSize.s12),
                              child: Image.asset('assets/image/slider3.jpg'))),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),

              ],
            ),
          ),
        ),
            Space.h64,
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}

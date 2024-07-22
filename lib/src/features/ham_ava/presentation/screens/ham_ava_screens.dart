import 'package:flutter/material.dart';
import '../../../../../generated/l10n.dart';
import '../../../../shared/footer/footer_widget.dart';
import '../../../app/my_app.dart';
import '../../../bottom_navigation_bar/bottom_navigation_bar.dart';
import '../../../home/domain/entities/special_fare_entity.dart';
import '../../../home/presentation/pages/web/components/special_trips/special_trips_container.dart';

class HamAvaScreens extends StatelessWidget {
  static const hamAvaPageName = 'hamAva-page';
  static const hamAvaPagePath = '/hamAva-page';
  const HamAvaScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final localization = S.of(context);
    final locale = Localizations.localeOf(context).languageCode;
    List<HoverImageCardEntity> hoverImageCardEntity = [
      HoverImageCardEntity(title: locale.contains('en') ? 'Tehran' : 'تهران', date: locale.contains('en') ? '24 Oct 2024 - 29 Oct 2024' : '11 مرداد 1403 - 15 مرداد 1403', price: locale.contains('en') ? 'Economy from Tehran 1,300,000 IRR' : '10,300,000 ریال', offPrice: '9,270,000 ریال', typeFlight: 'اکونومی از تهران',  imageUrl: ImageManager.tehran, isHover: false),
      HoverImageCardEntity(title: locale.contains('en') ? 'Mashhad' : 'مشهد', date: locale.contains('en') ? '11 Jul 2024 - 17 Jul 2024' : '1 مرداد 1403 - 5 مرداد 1403', price: locale.contains('en') ? 'Economy from Tehran 1,280,000 IRR' : '10,280,000 ریال', offPrice: '9,252,000 ریال', typeFlight: 'اکونومی از تهران',  imageUrl: ImageManager.mashhad, isHover: false),
      HoverImageCardEntity(title: locale.contains('en') ? 'Kish' : 'کیش', date: locale.contains('en') ? '24 Dec 2024 - 22 Jan 2025' : '2 مرداد 1403 - 6 مرداد 1403', price: locale.contains('en') ? 'Economy from Tehran 1,720,00. IRR' : '10,720,000 ریال', offPrice: '9,648,000 ریال', typeFlight: 'اکونومی از تهران', imageUrl: ImageManager.kish, isHover: false),
      HoverImageCardEntity(title: locale.contains('en') ? 'Qeshm' : 'قشم', date: locale.contains('en') ? '10 Sep 2024 - 10 Oct 2024' : '19 مرداد 1403 - 22 مرداد 1403', price: locale.contains('en') ? 'Economy from Tehran 1,700,000 IRR' : '10,700,000 ریال', offPrice: '9,630,000 ریال', typeFlight: 'اکونومی از تهران', imageUrl: ImageManager.qeshm, isHover: false),
      HoverImageCardEntity(title: locale.contains('en') ? 'Ahvaz' : 'اهواز', date: locale.contains('en') ? '11 Jul 2024 - 16 Jul 2024' : '20 مرداد 1403 - 24 مرداد 1403', price: locale.contains('en') ? 'Economy from Tehran 1,400,000 IRR' : '10,400,000 ریال', offPrice: '9,360,000 ریال', typeFlight: 'اکونومی از تهران', imageUrl: ImageManager.ahvaz, isHover: false),
      HoverImageCardEntity(title: locale.contains('en') ? 'Shiraz' : 'شیراز', date: locale.contains('en') ? '17 Sep 2024 - 22 Sep 2024' : '10 مرداد 1403 - 818 مرداد 1403', price: locale.contains('en') ? 'Economy from Tehran 1,500,000 IRR' : '10,500,000 ریال', offPrice: '9,450,000 ریال', typeFlight: 'اکونومی از تهران', imageUrl: ImageManager.shiraz, isHover: false),
      HoverImageCardEntity(title: locale.contains('en') ? 'Isfahan' : 'اصفهان', date: locale.contains('en') ? '29 Aug 2024 - 03 Sep 2024' : '4 مرداد 1403 - 8 مرداد 1403', price: locale.contains('en') ? 'Economy from Tehran 1,300,000 IRR' : '10,300,000 ریال', offPrice: '9,270,000 ریال', typeFlight: 'اکونومی از تهران', imageUrl: ImageManager.isfahan, isHover: false),
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
            SizedBox(
              width: double.infinity,
              height: 300,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24, vertical: AppPadding.p24),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(child: SizedBox()),
                    Expanded(
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
                            Text('جوایز', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),),
                          ],
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
                            Text('تخفیف بلیط و هتل', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),),
                          ],
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
                                Text('مجوز بار اضافی', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),),
                              ],
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
                                Text('اولویت انتخاب صندلی', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),),
                              ],
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
                                Text('اینترنت رایگان', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),),
                              ],
                            ),
                            Space.h8,

                      ],
                    )),
                    Expanded(
                      child: Column(
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
                            Text('ارتقای رایگان کلاس پرواز', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),),
                          ],
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
                            Text('اینترنت رایگان', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),),
                          ],
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
                            Text('بیمه سفر', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),),
                          ],
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
                            Text('مشاوره سفر', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Space.h8,
                      ],
                    ),
                    ),
                    Space.w16,
                    Container(
                      width: 450,
                      height: 180,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: AppSize.s1,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                        borderRadius: BorderRadius.circular(AppSize.s12),
                        boxShadow: [
                          BoxShadow(
                            color: Theme.of(context).colorScheme.surface,
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(AppSize.s12),
                              child: Image.asset('assets/image/gold.jpg', fit: BoxFit.cover, width: 480,)),
                          Padding(
                            padding: const EdgeInsets.only(left: AppPadding.p8, bottom: AppPadding.p12),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text('امیرحسین سلیمانی',style: Theme.of(context).textTheme.bodyMedium),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: AppPadding.p8, right: AppPadding.p8),
                            child: Align(
                                alignment: Alignment.topRight,
                                child: Text('هواپیمایی آوا', style: Theme.of(context).textTheme.titleMedium)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: AppPadding.p8, bottom: AppPadding.p12),
                            child: Align(
                              alignment: Alignment.bottomRight,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text('5000 امتیاز هم آوایی', style: Theme.of(context).textTheme.bodyMedium),
                                    Space.h8,
                                    Text('رده طلایی',style: Theme.of(context).textTheme.bodyMedium)
                                  ],
                                )),
                          ),
                          Opacity(
                            opacity: 0.2,
                            child: Align(
                                alignment: Alignment.center,
                                child: Image.asset('assets/image/ava.png', width: 340, height: 180, fit: BoxFit.contain,)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Space.h64,
            Padding(
              padding: const EdgeInsets.all(AppPadding.p24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('تخفیف های شما:', style: Theme.of(context).textTheme.headlineLarge,),
                  Space.h16,
                  Row(
                    children: [
                      Expanded(child: SpecialTripsContainer(hoverImageCardEntity: hoverImageCardEntity[2], isSmall: true, isOff: true,)),
                      Expanded(child: SpecialTripsContainer(hoverImageCardEntity: hoverImageCardEntity[3], isSmall: true, isOff: true,)),
                      Expanded(child: SpecialTripsContainer(hoverImageCardEntity: hoverImageCardEntity[4], isSmall: true, isOff: true,)),
                      Expanded(child: SpecialTripsContainer(hoverImageCardEntity: hoverImageCardEntity[5], isSmall: true, isOff: true,))
                    ],
                  ),
                ],
              ),
            ),
            Space.h64,
            Text('مزایای عضویت هم آوا', style: Theme.of(context).textTheme.headlineLarge,),
            Space.h8,
            Text('امتیاز سفر و سبک زندگی، لحضات به یاد ماندنی را با هم آوا داشته باشید', style: Theme.of(context).textTheme.titleMedium,),
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
                                      shape: BoxShape.circle
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(AppSize.s64),
                                      child: Image.asset('assets/image/blue.jpg', fit: BoxFit.cover,)),
                                ),
                                Space.h8,
                                Text('آبی', style: Theme.of(context).textTheme.bodyMedium,),
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
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle
                                ),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(AppSize.s64),
                                    child: Image.asset('assets/image/bronze.jpg', fit: BoxFit.cover,)),
                              ),
                              Space.h8,
                              Text('برنزی', style: Theme.of(context).textTheme.bodyMedium,)
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
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle
                                ),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(AppSize.s64),
                                    child: Image.asset('assets/image/silver.jpg', fit: BoxFit.cover,)),
                              ),
                              Space.h8,
                              Text('نقره ای', style: Theme.of(context).textTheme.bodyMedium,)
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
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle
                                ),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(AppSize.s64),
                                    child: Image.asset('assets/image/gold.jpg', fit: BoxFit.cover,)),
                              ),
                              Space.h8,
                              Text('طلایی', style: Theme.of(context).textTheme.bodyMedium,)
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
                      Expanded(child: Center(child: Text('جوایز', style: Theme.of(context).textTheme.titleMedium)),),
                      const Expanded(child: Center(child: Icon(IconManager.check, color: Colors.green, size: AppSize.s24,)),),
                      const Expanded(child: Center(child: Icon(IconManager.check, color: Colors.green, size: AppSize.s24,)),),
                      const Expanded(child: Center(child: Icon(IconManager.check, color: Colors.green, size: AppSize.s24,)),),
                      const Expanded(child: Center(child: Icon(IconManager.check, color: Colors.green, size: AppSize.s24,)),),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                  Space.h8,
                  const Divider(),
                  Space.h8,
                  Row(
                    children: [
                      const Expanded(child: SizedBox()),
                      Expanded(child: Center(child: Text('تخفیف بلیط و هتل', style: Theme.of(context).textTheme.titleMedium),),),
                      const Expanded(child: Center(child: Icon(IconManager.close, color: Colors.red, size: AppSize.s24,)),),
                      const Expanded(child: Center(child: Icon(IconManager.close, color: Colors.red, size: AppSize.s24,)),),
                      const Expanded(child: Center(child: Icon(IconManager.close, color: Colors.red, size: AppSize.s24,)),),
                      const Expanded(child: Center(child: Icon(IconManager.check, color: Colors.green, size: AppSize.s24,)),),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                  Space.h8,
                  const Divider(),
                  Space.h8,
                  Row(
                    children: [
                      const Expanded(child: SizedBox()),
                      Expanded(child: Center(child: Text('مجوز بار اضافی', style: Theme.of(context).textTheme.titleMedium),),),
                      const Expanded(child: Center(child: Icon(IconManager.close, color: Colors.red, size: AppSize.s24,)),),
                      const Expanded(child: Center(child: Icon(IconManager.close, color: Colors.red, size: AppSize.s24,)),),
                      const Expanded(child: Center(child: Icon(IconManager.check, color: Colors.green, size: AppSize.s24,)),),
                      const Expanded(child: Center(child: Icon(IconManager.check, color: Colors.green, size: AppSize.s24,)),),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                  Space.h8,
                  const Divider(),
                  Space.h8,
                  Row(
                    children: [
                      const Expanded(child: SizedBox()),
                      Expanded(child: Center(child: Text('اولویت انتخاب صندلی', style: Theme.of(context).textTheme.titleMedium)),),
                      const Expanded(child: Center(child: Icon(IconManager.close, color: Colors.red, size: AppSize.s24,)),),
                      const Expanded(child: Center(child: Icon(IconManager.check, color: Colors.green, size: AppSize.s24,)),),
                      const Expanded(child: Center(child: Icon(IconManager.check, color: Colors.green, size: AppSize.s24,)),),
                      const Expanded(child: Center(child: Icon(IconManager.check, color: Colors.green, size: AppSize.s24,)),),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                  Space.h8,
                  const Divider(),
                  Space.h8,
                  Row(
                    children: [
                      const Expanded(child: SizedBox()),
                      Expanded(child: Center(child: Text('اینترنت رایگان', style: Theme.of(context).textTheme.titleMedium)),),
                      const Expanded(child: Center(child: Icon(IconManager.check, color: Colors.green, size: AppSize.s24,)),),
                      const Expanded(child: Center(child: Icon(IconManager.check, color: Colors.green, size: AppSize.s24,)),),
                      const Expanded(child: Center(child: Icon(IconManager.check, color: Colors.green, size: AppSize.s24,)),),
                      const Expanded(child: Center(child: Icon(IconManager.check, color: Colors.green, size: AppSize.s24,)),),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                  Space.h8,
                  const Divider(),
                  Space.h8,
                  Row(
                    children: [
                      const Expanded(child: SizedBox()),
                      Expanded(child: Center(child: Text('ارتقای رایگان کلاس پرواز', style: Theme.of(context).textTheme.titleMedium),),),
                      const Expanded(child: Center(child: Icon(IconManager.close, color: Colors.red, size: AppSize.s24,)),),
                      const Expanded(child: Center(child: Icon(IconManager.close, color: Colors.red, size: AppSize.s24,)),),
                      const Expanded(child: Center(child: Icon(IconManager.close, color: Colors.red, size: AppSize.s24,)),),
                      const Expanded(child: Center(child: Icon(IconManager.check, color: Colors.green, size: AppSize.s24,)),),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                  Space.h8,
                  const Divider(),
                  Space.h8,
                  Row(
                    children: [
                      const Expanded(child: SizedBox()),
                      Expanded(child: Center(child: Text('بیمه سفر', style: Theme.of(context).textTheme.titleMedium),),),
                      const Expanded(child: Center(child: Icon(IconManager.close, color: Colors.red, size: AppSize.s24,)),),
                      const Expanded(child: Center(child: Icon(IconManager.check, color: Colors.green, size: AppSize.s24,)),),
                      const Expanded(child: Center(child: Icon(IconManager.check, color: Colors.green, size: AppSize.s24,)),),
                      const Expanded(child: Center(child: Icon(IconManager.check, color: Colors.green, size: AppSize.s24,)),),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                  Space.h8,
                  const Divider(),
                  Space.h8,
                  Row(
                    children: [
                      const Expanded(child: SizedBox()),
                      Expanded(child: Center(child: Text('مشاوره سفر', style: Theme.of(context).textTheme.titleMedium)),),
                      const Expanded(child: Center(child: Icon(IconManager.close, color: Colors.red, size: AppSize.s24,)),),
                      const Expanded(child: Center(child: Icon(IconManager.close, color: Colors.red, size: AppSize.s24,)),),
                      const Expanded(child: Center(child: Icon(IconManager.check, color: Colors.green, size: AppSize.s24,)),),
                      const Expanded(child: Center(child: Icon(IconManager.check, color: Colors.green, size: AppSize.s24,)),),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                  Space.h8,
                  const Divider(),
                  Space.h8,
                ],
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

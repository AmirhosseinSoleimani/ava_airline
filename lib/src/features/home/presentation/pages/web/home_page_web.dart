import 'package:ava_airline/src/features/book_flight/book_flight.dart';
import 'package:ava_airline/src/features/home/domain/entities/special_fare_entity.dart';
import 'package:ava_airline/src/features/home/home.dart';
import 'package:ava_airline/src/shared/footer/footer_widget.dart';

import 'components/special_trips/special_trips_container.dart';



class HomePageWeb extends StatefulWidget {
  const HomePageWeb({super.key});

  @override
  State<HomePageWeb> createState() => _HomePageWebState();
}

class _HomePageWebState extends State<HomePageWeb> {
  List<Map<String, List<String>>> navbarItems = <Map<String, List<String>>>[
    {
      "رزرو": ['خرید بلیط', 'پذیرش آنلاین', 'استرداد بلیط', 'تغییر بلیط']
    },
    {
      "اطلاعات سفر": [
        'راهنمای خرید بلیط',
        'راهنمای مدیریت رزرو',
        'راهنمای استرداد بلیط',
        'راهنمای پذیرش مسافر',
        'مسافر توان خواه',
        'موارد پزشکی',
        'کودک بدون همراه',
        'خوراک ویژه',
        'خدمات لانج',
        'شرایط سفر به کشورها',
        'بار مسافر',
        'کالاهای ممنوعه',
        'حیوان زنده',
        'بار گمشده',
        'ایمنی و امنیت پرواز'
      ]
    },
    {
      "در طول پرواز": [
        'ناوگان آوا',
        'وضعیت صندلی ها',
        'کلاس های پروازی',
        'کروی پروازی',
        'پذیرایی',
        'سرگرمی های داخل پرواز',
        'مجله پروازی'
      ]
    },
    {
      "مقاصد پروازی": [
        'مقاصد داخلی',
        'مقاصد بین المللی',
        'گردش با آوا',
      ]
    },
    {
      "باشگاه مسافران ویژه": [
        'خرید بلیط',
        'پذیرش آنلاین',
        'استرداد بلیط',
        'تغییر بلیط'
      ]
    }
  ];
  List<HoverImageCardEntity> hoverImageCardEntity = [
    HoverImageCardEntity(title: 'Montréal', date: '04 Sep 2024 - 09 Sep 2024', price: 'Economy from IRR 1440354050', imageUrl: ImageManager.montreal, isHover: false),
    HoverImageCardEntity(title: 'Paris', date: '09 Nov 2024 - 15 Nov 2024', price: 'Economy from IRR 707678980', imageUrl: ImageManager.paris, isHover: false),
    HoverImageCardEntity(title: 'Los Angeles', date: '02 Oct 2024 - 16 Oct 2024', price: 'Economy from IRR 617219010', imageUrl: ImageManager.losAngeles, isHover: false),
    HoverImageCardEntity(title: 'Frankfurt', date: '17 Oct 2024 - 05 Nov 2024', price: 'Economy from IRR 314096992', imageUrl: ImageManager.frankfurt, isHover: false),
    HoverImageCardEntity(title: 'Bangkok', date: '08 Jul 2024 - 15 Jul 2024', price: 'Economy from IRR 604017980', imageUrl: ImageManager.bangkok, isHover: false),
    HoverImageCardEntity(title: 'Milan', date: '03 Aug 2024 - 08 Aug 2024', price: 'Economy from IRR 570211010', imageUrl: ImageManager.milan, isHover: false),
    HoverImageCardEntity(title: 'Rome', date: '03 Aug 2024 - 08 Aug 2024', price: 'Economy from IRR 583790980', imageUrl: ImageManager.rome, isHover: false),

  ];
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late List<bool> expanded;

  @override
  void initState() {
    expanded = List.generate(navbarItems.length, (_) => false);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final locale = Localizations.localeOf(context).languageCode;
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        backgroundColor: Theme.of(context).colorScheme.onSecondary,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(AppPadding.p12),
                    child: SvgPicture.asset(SvgManager.avaAirLineLogoSvg,semanticsLabel: 'AVA Airlines', width: AppSize.s100, colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.error,
                        BlendMode.srcIn)),
                  ),
                  AvaInkwellButton(
                    buttonPadding: AppPadding.p12,
                    onTap: () {},
                    title: 'ورود/ثبت نام',
                    style: Theme.of(context).textTheme.bodyMedium,
                    borderRadius: AppSize.s8,
                    backgroundColor:
                    ColorDarkThemeManager.transparent,
                    borderColor:
                    Theme.of(context).colorScheme.onSurface,
                  ),
                  const Divider(),
                  ExpansionPanelList(
                    expansionCallback: (int index, bool isExpanded) {
                      setState(() {
                        expanded[index] = isExpanded;
                      });
                    },
                    children: navbarItems.asMap().entries.map<ExpansionPanel>((entry) {
                      int index = entry.key;
                      String key = entry.value.keys.first;
                      List<String> values = entry.value.values.first;
                      return ExpansionPanel(
                        backgroundColor: Theme.of(context).colorScheme.onSecondary,
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return ListTile(
                            title: Text(key),
                          );
                        },
                        body: Column(
                          children: values.map((value) {
                            return Padding(
                              padding: const EdgeInsets.all(AppPadding.p8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(value),
                                  const Icon(IconManager.chevronRight, size: AppSize.s24,),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                        isExpanded: expanded[index],
                      );
                    }).toList(),
                  ),
                ],
              ),
              Space.h64,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('ورژن 1.0', style: Theme.of(context).textTheme.bodyMedium,),
                    Row(
                      children: [
                        SvgPicture.asset(
                          SvgManager.earthSvg,
                          colorFilter: ColorFilter.mode(
                              Theme.of(context).colorScheme.onSurface,
                              BlendMode.srcIn),
                          semanticsLabel: 'AVA Airline',
                          width: AppSize.s42,
                        ),
                        Space.w8,
                        Text(
                          'فا',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium,
                        )
                      ],
                    ),

                  ],
                ),
              ),
              Space.h16,

            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Theme.of(context).colorScheme.surface,
              width: double.infinity,
              height: width * 0.4,
              child: Stack(
                children: [
                  Image.asset(ImageManager.homePageImage,fit: BoxFit.cover,width: double.infinity, height: width * 0.3,),
                  (width > 1024) ?
                  const NavbarComponent() :
                  Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(AppPadding.p16),
                    child: Row(
                      mainAxisAlignment: (locale == 'en') ? MainAxisAlignment.start : MainAxisAlignment.end,
                      children: [
                        if (locale == 'en')
                          InkWell(
                            onTap: () {
                              scaffoldKey.currentState?.openDrawer();
                            },
                            child: Icon(
                              IconManager.density,
                              size: AppSize.s24,
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                          ),
                        SvgPicture.asset(SvgManager.avaAirLineLogoSvg, width: AppSize.s60, height: AppSize.s60,),
                        Space.w16,
                        if (locale != 'en')
                          InkWell(
                            onTap: () {
                              scaffoldKey.currentState?.openDrawer();
                            },
                            child: Icon(
                              IconManager.density,
                              size: AppSize.s24,
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                  const Align(
                    alignment: Alignment.bottomCenter,
                    child: BookFlightPage(),
                  )
              ],
            ),

            ),
            Space.h64,
            const IntroduceWidget(),
            Space.h64,
            SizedBox(
              width: width * 0.6,
              height: 1300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('مقصد های ویژه شما', style: Theme.of(context).textTheme.displayLarge?.copyWith(fontWeight: FontWeight.bold, fontSize: AppSize.s28),),
                  Space.h16,
                  Row(
                    children: [
                      Expanded(
                        child: SpecialTripsContainer(hoverImageCardEntity: hoverImageCardEntity[0],),
                      ),
                      Space.w16,
                      Expanded(
                        child: SpecialTripsContainer(hoverImageCardEntity: hoverImageCardEntity[1],),
                      ),
                    ],
                  ),
                  Space.h16,
                  Row(
                    children: [
                      Expanded(
                        child: SpecialTripsContainer(hoverImageCardEntity: hoverImageCardEntity[2],),
                      ),
                      Space.w16,
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(child: SpecialTripsContainer(hoverImageCardEntity: hoverImageCardEntity[3], isSmall: true,)),
                            Expanded(child: SpecialTripsContainer(hoverImageCardEntity: hoverImageCardEntity[4], isSmall: true,)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Space.h16,
                  Row(
                    children: [
                      Expanded(
                        child: SpecialTripsContainer(hoverImageCardEntity: hoverImageCardEntity[5],),
                      ),
                      Space.w16,
                      Expanded(
                        child: SpecialTripsContainer(hoverImageCardEntity: hoverImageCardEntity[6],),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Space.h64,
            const AboutUsHomePage(),
            Space.h64,
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}


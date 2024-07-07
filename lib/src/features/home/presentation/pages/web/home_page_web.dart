import 'package:ava_airline/src/features/book_flight/book_flight.dart';
import 'package:ava_airline/src/features/home/home.dart';

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
                    child: SvgPicture.asset(SvgManager.avaAirLineLogoSvg,semanticsLabel: 'Ava Airlines', width: AppSize.s100, colorFilter: ColorFilter.mode(
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
                          semanticsLabel: 'Ava Airlines',
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
          ],
        ),
      ),
    );
  }
}


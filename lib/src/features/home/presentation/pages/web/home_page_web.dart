import 'package:ava_airline/generated/l10n.dart';
import 'package:ava_airline/src/features/book_flight/book_flight.dart';
import 'package:ava_airline/src/features/home/domain/entities/special_fare_entity.dart';
import 'package:ava_airline/src/features/home/home.dart';
import 'package:ava_airline/src/shared/footer/footer_widget.dart';
import '../../../../../shared/ui_kits/ava_drawer/ava_drawer.dart';
import '../../../../app/my_app.dart';
import 'components/special_trips/special_trips_container.dart';



class HomePageWeb extends StatefulWidget {
  const HomePageWeb({super.key});

  @override
  State<HomePageWeb> createState() => _HomePageWebState();
}

class _HomePageWebState extends State<HomePageWeb> {
  late List<Map<String, List<String>>> navbarItems;
  late List<bool> expanded;

  @override
  void initState() {
    super.initState();
    expanded = [];
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final localization = S.of(context);
    navbarItems = <Map<String, List<String>>>[
      {
        localization.reserve: [localization.buyTicket, localization.online_check_in, localization.refund_ticket, localization.change_ticket]
      },
      {
        localization.travel_info: [
          localization.ticket_guide,
          localization.reservation_management_guide,
          localization.refund_guide,
          localization.passenger_guide,
          localization.disabled_passenger,
          localization.medical_issues,
          localization.unaccompanied_child,
          localization.special_meals,
          localization.lounge_services,
          localization.country_travel_conditions,
          localization.baggage,
          localization.prohibited_items,
          localization.live_animals,
          localization.lost_baggage,
          localization.flight_safety
        ]
      },
      {
        localization.during_flight: [
          localization.ava_fleet,
          localization.seat_status,
          localization.flight_classes,
          localization.flight_crew,
          localization.catering,
          localization.in_flight_entertainment,
          localization.in_flight_magazine
        ]
      },
      {
        localization.flight_destinations: [
          localization.domestic_destinations,
          localization.international_destinations,
          localization.ava_tour,
        ]
      },
      {
        localization.myTrips: [
          localization.myTrips,
        ]
      }
    ];
    expanded = List.generate(navbarItems.length, (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    final localization = S.of(context);
    final width = MediaQuery.of(context).size.width;
    final locale = Localizations.localeOf(context).languageCode;
    List<HoverImageCardEntity> hoverImageCardEntity = [
      HoverImageCardEntity(title: locale.contains('en') ? 'Tehran' : 'تهران', date: locale.contains('en') ? '24 Oct 2024 - 29 Oct 2024' : '11 مرداد 1403 - 15 مرداد 1403', price: locale.contains('en') ? 'Business from Tehran 1,300,000 IRR' : 'بیزیینس از تهران 1,300,000 ریال', imageUrl: ImageManager.tehran, isHover: false),
      HoverImageCardEntity(title: locale.contains('en') ? 'Mashhad' : 'مشهد', date: locale.contains('en') ? '11 Jul 2024 - 17 Jul 2024' : '1 مرداد 1403 - 5 مرداد 1403', price: locale.contains('en') ? 'Business from Tehran 1,280,000 IRR' : 'بیزیینس از تهران 1,280,000 ریال', imageUrl: ImageManager.mashhad, isHover: false),
      HoverImageCardEntity(title: locale.contains('en') ? 'Kish' : 'کیش', date: locale.contains('en') ? '24 Dec 2024 - 22 Jan 2025' : '2 مرداد 1403 - 6 مرداد 1403', price: locale.contains('en') ? 'Business from Tehran 1,720,00. IRR' : 'بیزیینس از تهران 1,720,000 ریال', imageUrl: ImageManager.kish, isHover: false),
      HoverImageCardEntity(title: locale.contains('en') ? 'Qeshm' : 'قشم', date: locale.contains('en') ? '10 Sep 2024 - 10 Oct 2024' : '19 مرداد 1403 - 22 مرداد 1403', price: locale.contains('en') ? 'Business from Tehran 1,700,000 IRR' : 'بیزیینس از تهران 1,700,000 ریال', imageUrl: ImageManager.qeshm, isHover: false),
      HoverImageCardEntity(title: locale.contains('en') ? 'Ahvaz' : 'اهواز', date: locale.contains('en') ? '11 Jul 2024 - 16 Jul 2024' : '20 مرداد 1403 - 24 مرداد 1403', price: locale.contains('en') ? 'Business from Tehran 1,400,000 IRR' : 'بیزیینس از تهران 1,400,000 ریال', imageUrl: ImageManager.ahvaz, isHover: false),
      HoverImageCardEntity(title: locale.contains('en') ? 'Shiraz' : 'شیراز', date: locale.contains('en') ? '17 Sep 2024 - 22 Sep 2024' : '10 مرداد 1403 - 818 مرداد 1403', price: locale.contains('en') ? 'Business from Tehran 1,500,000 IRR' : 'بیزیینس از تهران 1,500,000 ریال', imageUrl: ImageManager.shiraz, isHover: false),
      HoverImageCardEntity(title: locale.contains('en') ? 'Isfahan' : 'اصفهان', date: locale.contains('en') ? '29 Aug 2024 - 03 Sep 2024' : '4 مرداد 1403 - 8 مرداد 1403', price: locale.contains('en') ? 'Business from Tehran 1,300,000 IRR' : 'بیزیینس از تهران 1,300,000 ریال', imageUrl: ImageManager.isfahan, isHover: false),
    ];
    return Scaffold(
      key: scaffoldKey,
      drawer: const AvaDrawer(),
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
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
                        Space.w16,
                        SvgPicture.asset(SvgManager.avaAirLineLogoSvg, width: AppSize.s60, height: AppSize.s60,),
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
              // width: width * 0.6,
              height: 1300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(localization.special_fares, style: Theme.of(context).textTheme.displayLarge?.copyWith(fontWeight: FontWeight.bold, fontSize: AppSize.s28),),
                  Space.h16,
                  Row(
                    children: [
                      const Spacer(),
                      Expanded(
                        flex: 5,
                        child: SpecialTripsContainer(hoverImageCardEntity: hoverImageCardEntity[0],),
                      ),
                      // Spacer(),
                      Space.w16,
                      Expanded(
                        flex: 5,
                        child: SpecialTripsContainer(hoverImageCardEntity: hoverImageCardEntity[1],),
                      ),
                      const Spacer(),
                    ],
                  ),
                  Space.h16,
                  Row(
                    children: [
                      const Spacer(),
                      Expanded(
                        flex: 5,
                        child: SpecialTripsContainer(hoverImageCardEntity: hoverImageCardEntity[2],),
                      ),
                      Space.w16,
                      Expanded(
                        flex: 5,
                        child: Row(
                          children: [
                            Expanded(child: SpecialTripsContainer(hoverImageCardEntity: hoverImageCardEntity[3], isSmall: true,)),
                            Expanded(child: SpecialTripsContainer(hoverImageCardEntity: hoverImageCardEntity[4], isSmall: true,)),
                          ],
                        ),
                      ),
                      const Spacer()
                    ],
                  ),
                  Space.h16,
                  Row(
                    children: [
                      const Spacer(),
                      Expanded(
                        flex: 5,
                        child: SpecialTripsContainer(hoverImageCardEntity: hoverImageCardEntity[5],),
                      ),
                      Space.w16,
                      Expanded(
                        flex: 5,
                        child: SpecialTripsContainer(hoverImageCardEntity: hoverImageCardEntity[6],),
                      ),
                      Spacer()
                    ],
                  ),
                ],
              ),
            ),
            Space.h64,
            ///special offers
            const AboutUsHomePage(),
            Space.h64,
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}


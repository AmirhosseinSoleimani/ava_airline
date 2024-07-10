import 'package:ava_airline/src/features/book_flight/presentation/pages/web/components/flight_selection/widgets/stepper_widget.dart';
import 'package:ava_airline/src/features/book_flight/presentation/pages/web/components/passenger_information/passenger_information_widget.dart';
import 'package:ava_airline/src/shared/footer/footer_widget.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';
import '../../../../../../../../generated/l10n.dart';
import '../../../../../../../shared/ui_kits/ava_drawer/ava_drawer.dart';
import '../../../../../../bottom_navigation_bar/bottom_navigation_bar.dart';
class FlightSelectionPage extends StatefulWidget {
  static const  flightSelectionPageName = 'flight-selection-page';
  static const  flightSelectionPagePath = '/flight-selection-page';
  const FlightSelectionPage({super.key});

  @override
  State<FlightSelectionPage> createState() => _FlightSelectionPageState();
}

class _FlightSelectionPageState extends State<FlightSelectionPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  DatePickerController datePickerController = DatePickerController();


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final locale = Localizations.localeOf(context).languageCode;
    final localization = S.of(context);
    return Scaffold(
      drawer: const AvaDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Theme.of(context).colorScheme.onPrimary,
              width: double.infinity,
              height: 80,
              child: (width > 1024) ?
              NavbarComponent(color: Theme.of(context).colorScheme.onSurface,) :
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
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                      Space.w16,
                      SvgPicture.asset(SvgManager.avaAirLineLogoSvg, width: AppSize.s60, height: AppSize.s60, colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onSurface, BlendMode.srcIn)),
                    ],
                  ),
                ),
              ),
            ),
            Space.h64,
            SizedBox(
              width: width * 0.6,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                child: StepperWidget(stepperList: [
                  StepperModel(
                      title: localization.search, icon: Icons.fact_check_outlined),
                  StepperModel(
                      title: localization.flightSelection, icon: IconManager.airplane),
                  StepperModel(title: localization.passengerInformation, icon: IconManager.people),
                  StepperModel(title: localization.specialServices, icon: Icons.room_service),
                  StepperModel(
                      title: localization.confirmationAndPayment, icon: Icons.airplane_ticket),
                ], currentIndex: 1,),
              ),
            ),
            Space.h16,
            Container(
              width: width * 0.6,
              height: 120,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onPrimary,
                borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16, vertical: AppPadding.p12),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(localization.origin, style: Theme.of(context).textTheme.bodyMedium,),
                        Space.h8,
                        Text(locale.contains('en') ? 'Tehran(Mehrabad)' :'تهران(مهرآباد)', style: Theme.of(context).textTheme.bodyMedium,),
                      ],
                    ),
                    Space.w24,
                    Transform.rotate(
                        angle: locale.contains('en') ? 0 : 180 * 3.1415927 /180,
                        child: Icon(IconManager.airplane, size: AppSize.s42, color: ColorLightThemeManager.grey)),
                    Space.w24,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(localization.destination, style: Theme.of(context).textTheme.bodyMedium,),
                        Space.h8,
                        Text(locale.contains('en') ? 'Mashhad(Hashemi Nejad)' : 'مشهد(هاشمی نژاد)', style: Theme.of(context).textTheme.bodyMedium,),
                      ],
                    ),
                    Space.w24,
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: AppPadding.p16),
                      child: VerticalDivider(
                        width: AppSize.s1,
                        thickness: AppSize.s1,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    Space.w24,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(localization.departureDate, style: Theme.of(context).textTheme.bodyMedium,),
                        Space.h8,
                        Text('30 مرداد 1403', style: Theme.of(context).textTheme.bodyMedium,),
                      ],
                    ),
                    Space.w24,
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: AppPadding.p16),
                      child: VerticalDivider(
                        width: AppSize.s1,
                        thickness: AppSize.s1,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    Space.w24,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(localization.numberOfPassengers, style: Theme.of(context).textTheme.bodyMedium,),
                        Space.h8,
                        Text(localization.passengersCount(1), style: Theme.of(context).textTheme.bodyMedium,),
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(AppPadding.p16),
                      child: AvaElevatedButton(
                        onTap: () {},
                        title: localization.changeSearch,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Space.h16,
            Container(
              width: width * 0.6,
              height: AppSize.s120,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary,
                  borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p12),
                child: DatePicker(
                  controller: datePickerController,
                  calendarType: locale.contains('en') ? CalendarType.gregorianDate : CalendarType.persianDate,
                  DateTime.now(),
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Colors.black,
                  selectedTextColor: Colors.white,
                  onDateChange: (date) {
                    print(date);
                    setState(() {
                    });
                  },
                ),
              ),
            ),
            Space.h64,
            Container(
              width: width * 0.6,
              height: 180,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onPrimary,
                borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(AppPadding.p12),
                          child: SvgPicture.asset(SvgManager.avaAirLineLogoSvg,semanticsLabel: 'AVA Airlines', width: AppSize.s100, colorFilter: ColorFilter.mode(
                              Theme.of(context).colorScheme.error,
                              BlendMode.srcIn)),
                        ),
                        Space.w64,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Text(localization.systemic, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: ColorLightThemeManager.grey),),
                                  Space.w12,
                                  Text(localization.economy, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: ColorLightThemeManager.grey))
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Row(
                                children: [
                                  Text(locale.contains('en') ? 'Tehran' :'تهران', style: Theme.of(context).textTheme.titleMedium,),
                                  Space.w8,
                                  Text('20:40', style: Theme.of(context).textTheme.titleMedium,),
                                  Space.w16,
                                  Transform.rotate(
                                      angle: locale.contains('en') ? 0 : 180 * 3.1415927 /180,
                                      child: Icon(IconManager.airplane, size: AppSize.s16, color: ColorLightThemeManager.grey,)),
                                  Container(
                                    width: width * 0.1,
                                    height: AppSize.s1,
                                    color: ColorLightThemeManager.grey,
                                  ),
                                  Container(
                                    width: AppSize.s8,
                                    height: AppSize.s8,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: ColorLightThemeManager.transparent,
                                        border: Border.all(
                                            width: AppSize.s1,
                                            color: ColorLightThemeManager.grey
                                        )
                                    ),
                                  ),
                                  Space.w16,
                                  Text(locale.contains('en') ? 'Mashhad' :'مشهد' ,style: Theme.of(context).textTheme.titleMedium,),
                                  Space.w8,
                                  Text('10:00',  style: Theme.of(context).textTheme.titleMedium,)
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Text(localization.flightInformation, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: ColorLightThemeManager.grey),),
                                  Space.w16,
                                  Text(localization.refundPolicies, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: ColorLightThemeManager.grey))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(
                    thickness: AppSize.s1,
                    color: ColorLightThemeManager.grey,
                    width: AppSize.s1,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('13,267,000ریال', style: Theme.of(context).textTheme.titleMedium,),
                        Space.h8,
                        Text(localization.officialAirlineRate, style: Theme.of(context).textTheme.bodyMedium,),
                        Space.h16,
                        AvaElevatedButton(
                          onTap: () {
                            context.go(PassengerInformationPage.passengerInformationPagePath);
                          },
                          title: localization.selectFlight,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                        )
                      ],
                    ),
                  )
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

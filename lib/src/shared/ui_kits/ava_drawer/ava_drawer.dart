import 'package:flutter_svg/svg.dart';
import '../../../../generated/l10n.dart';
import '../../../features/book_flight/book_flight.dart';

class AvaDrawer extends StatefulWidget {
  const AvaDrawer({super.key});

  @override
  State<AvaDrawer> createState() => _AvaDrawerState();
}

class _AvaDrawerState extends State<AvaDrawer> {

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
        localization.special_passenger_club: [
          localization.buyTicket,
        ]
      }
    ];
    expanded = List.generate(navbarItems.length, (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    final localization = S.of(context);
    return Drawer(
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
                  title: localization.login_register,
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
                  Text(localization.version, style: Theme.of(context).textTheme.bodyMedium,),
                  Row(
                    children: [
                      SvgPicture.asset(
                        SvgManager.earthSvg,
                        colorFilter: ColorFilter.mode(
                            Theme.of(context).colorScheme.onSurface,
                            BlendMode.srcIn),
                        semanticsLabel: 'AVA Airlines',
                        width: AppSize.s42,
                      ),
                      Space.w8,
                      Text(
                        localization.language,
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
    );
  }
}

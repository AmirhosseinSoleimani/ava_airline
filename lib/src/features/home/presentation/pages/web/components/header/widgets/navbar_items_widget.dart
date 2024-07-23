import 'package:ava_airline/generated/l10n.dart';
import 'package:ava_airline/src/features/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:ava_airline/src/features/features.dart';
import 'package:ava_airline/src/features/ham_ava/presentation/screens/ham_ava_screens.dart';
import 'package:ava_airline/src/features/static_contents/presentation/incapacitated-passenger-wheelchair/incapacitated-passenger-wheelchair.dart';

class NavbarItems extends StatefulWidget implements PreferredSizeWidget {
  const NavbarItems({super.key, this.color});
  final Color? color;
  @override
  Size get preferredSize => const Size.fromHeight(AppSize.s60);

  @override
  NavbarItemsState createState() => NavbarItemsState();
}

class NavbarItemsState extends State<NavbarItems> {

  @override
  Widget build(BuildContext context) {
    final localization = S.of(context);
    final navbarItems = [
      localization.reserve,
      localization.travel_info,
      localization.during_flight,
      localization.flight_destinations,
      localization.profile
    ];
    return Row(
      children: navbarItems
          .asMap()
          .entries
          .map((element) => _buildMenuItem(context, element.value, element.key))
          .toList(),
    );
  }

  Widget _buildMenuItem(BuildContext context, String title, int index) {
    return InkWell(
      onTap: () {
        if(index == 4) {
          context.go(HamAvaScreens.hamAvaPagePath);
        } else {
          showModalFromTop(context, index);
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
        child: Text(title,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: widget.color ?? Theme.of(context).colorScheme.onPrimary)),
      ),
    );
  }
}

void showModalFromTop(BuildContext context, int? selectedIndex) {
  final width = MediaQuery.of(context).size.width;
  final localization = S.of(context);
  final navbarItems = <Map<String, List<String>>>[
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
      localization.profile: [
        localization.profile,
      ]
    }
  ];
  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    barrierColor: Colors.black45,
    transitionDuration: const Duration(milliseconds: DurationConstant.d300),
    pageBuilder: (BuildContext buildContext, Animation animation,
        Animation secondaryAnimation) {
      return StatefulBuilder(
        builder:
            (BuildContext context, void Function(void Function()) setState) {
          return Align(
            alignment: Alignment.topCenter,
            child: Container(
              color: ColorLightThemeManager.transparent,
              height: AppSize.s320,
              child: Material(
                color: Theme.of(context).colorScheme.onPrimary,
                child: Padding(
                  padding: const EdgeInsets.all(AppPadding.p16),
                  child: Column(
                    children: [
                      SizedBox(
                        height: AppSize.s60,
                        width: width * 0.6,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(AppPadding.p8),
                                  child: SvgPicture.asset(
                                      SvgManager.avaAirLineLogoSvg,
                                      semanticsLabel: 'AVA Airlines',
                                      width: AppSize.s100,
                                      colorFilter: ColorFilter.mode(
                                          Theme.of(context).colorScheme.primary,
                                          BlendMode.srcIn)),
                                ),
                                Row(
                                  children: navbarItems.asMap().entries.map((element) {
                                    String key = element.value.keys.first.toString();
                                    bool isActive =
                                        selectedIndex == element.key;
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: AppPadding.p12),
                                      child: InkWell(
                                        onTap: () {
                                          selectedIndex = element.key;
                                          setState(() {});
                                        },
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              key,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium,
                                            ),
                                            Space.h4,
                                            if (isActive)
                                              Container(
                                                height: AppSize.s2,
                                                width: AppSize.s60,
                                                color: Theme.of(context).colorScheme.primary,
                                              ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ],
                            ),
                            Row(
                              children: [
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
                                Space.w8,
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: AppPadding.p16),
                                  child: VerticalDivider(
                                    thickness: AppSize.s1,
                                    color:
                                        Theme.of(context).colorScheme.onSurface,
                                    width: AppSize.s1,
                                  ),
                                ),
                                Space.w8,
                                SvgPicture.asset(
                                  SvgManager.earthSvg,
                                  colorFilter: ColorFilter.mode(
                                      Theme.of(context).colorScheme.onSurface,
                                      BlendMode.srcIn),
                                  semanticsLabel: 'AVA Airlines',
                                  width: AppSize.s42,
                                ),
                                Space.w4,
                                Text(
                                  localization.language,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurface),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      Space.h16,
                      if (selectedIndex != null)
                        Expanded(
                          child: Center(
                            child: GridView.builder(
                              shrinkWrap: true,
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                                childAspectRatio: 12,
                              ),
                              itemCount: navbarItems[selectedIndex!]
                                  .values
                                  .first
                                  .length,
                              itemBuilder: (context, index) {
                                return Center(
                                  child: InkWell(
                                    onTap: () {
                                      if(index == 4) {
                                        context.go(IncapacitatedPassengerWheelchairPage.incapacitatedPassengerWheelchairPagePath);
                                      }
                                    },
                                    child: Text(
                                      navbarItems[selectedIndex!]
                                          .values
                                          .first[index],
                                      style: Theme.of(context).textTheme.bodyMedium,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      );
    },
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, -1),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );
    },
  );
}

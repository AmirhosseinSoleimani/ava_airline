import '../../../../../generated/l10n.dart';
import '../../../../shared/footer/footer_widget.dart';
import '../../../app/my_app.dart';
import '../../../bottom_navigation_bar/bottom_navigation_bar.dart';

class IncapacitatedPassengerWheelchairPage extends StatelessWidget {
  static const incapacitatedPassengerWheelchairPageName =
      'incapacitated-passenger-wheelchair-page';
  static const incapacitatedPassengerWheelchairPagePath =
      '/incapacitated-passenger-wheelchair-page';

  const IncapacitatedPassengerWheelchairPage({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = S.of(context);
    final width = MediaQuery.of(context).size.width;
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
                               ),
                          ],
                        ),
                      ),
                    ),
            ),
            SizedBox(
              width: double.infinity,
              height: 400,
              child: Stack(
                children: [
                  Image.asset(ImageManager.incapacitatedPassengers, width: double.infinity,height: 400, fit: BoxFit.cover,),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(localization.incapacitatedPassengerWheelchairPageTitle, style: Theme.of(context).textTheme.displayLarge?.copyWith(fontWeight: FontWeight.bold, fontSize: AppSize.s28, color: Theme.of(context).colorScheme.onSecondary)),
                        Space.h16,
                        Text(localization.incapacitatedPassengerWheelchairPageSubtitle, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary),)
                      ],
                    ),

                  ),
                ],
              ),
            ),
            Space.h64,
            SizedBox(
              width: width * 0.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(localization.blindDeafTitle, style: Theme.of(context).textTheme.displayLarge?.copyWith(fontWeight: FontWeight.bold, fontSize: AppSize.s24),),
                  Space.h16,
                  Text(
                    localization.blindDeafDescription,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.start,
                  ),
                  Space.h32,
                  Text(
                    localization.wheelchairTitle, style: Theme.of(context).textTheme.displayLarge?.copyWith(fontWeight: FontWeight.bold, fontSize: AppSize.s24),
                  ),
                  Space.h16,
                  Text(
                    localization.wheelchairDescription,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.start,
                  ),
                  Space.h32,
                  Text(
                      localization.noteTitle, style: Theme.of(context).textTheme.displayLarge?.copyWith(fontWeight: FontWeight.bold, fontSize: AppSize.s24)),
                  Space.h16,
                  Text(
                    localization.noteDescription,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.start,
                  ),
                  Space.h32,
                  Text(localization.batteryWheelchairTitle, style: Theme.of(context).textTheme.displayLarge?.copyWith(fontWeight: FontWeight.bold, fontSize: AppSize.s24)),
                  Space.h16,
                  Text(
                    localization.batteryWheelchairDescription,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.start,
                  ),
                  Space.h16,
                  Text(
                    localization.batteryDescription2,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.start,
                  ),
                  Space.h32,
                  Text(localization.wheelchairServiceCostTitle, style: Theme.of(context).textTheme.displayLarge?.copyWith(fontWeight: FontWeight.bold, fontSize: AppSize.s24)),
                  Space.h32,
                  Row(
                    children: [
                      Container(
                        width: AppSize.s12,
                        height: AppSize.s12,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          shape: BoxShape.circle
                        ),
                      ),
                      Space.w12,
                      Text(localization.internationalFlightCost, style: Theme.of(context).textTheme.displayLarge?.copyWith(fontWeight: FontWeight.bold, fontSize: AppSize.s18)),
                    ],
                  ),
                  Space.h32,
                  Row(
                    children: [
                      Container(
                        width: AppSize.s12,
                        height: AppSize.s12,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            shape: BoxShape.circle
                        ),
                      ),
                      Space.w12,
                      Text(localization.toIranFlightCost, style: Theme.of(context).textTheme.displayLarge?.copyWith(fontWeight: FontWeight.bold, fontSize: AppSize.s18)),
                    ],
                  ),
                  Space.h32,
                  Row(
                    children: [
                      Container(
                        width: AppSize.s12,
                        height: AppSize.s12,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            shape: BoxShape.circle
                        ),
                      ),
                      Space.w12,
                      Text(localization.dubaiToIranFlightCost, style: Theme.of(context).textTheme.displayLarge?.copyWith(fontWeight: FontWeight.bold, fontSize: AppSize.s18)),
                    ],
                  ),
                  Space.h32,
                  Text(
                    localization.exemptionsDescription,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.start,
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

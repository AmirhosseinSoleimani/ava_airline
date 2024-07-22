import 'package:flutter/material.dart';
import '../../../../../generated/l10n.dart';
import '../../../../shared/footer/footer_widget.dart';
import '../../../app/my_app.dart';
import '../../../bottom_navigation_bar/bottom_navigation_bar.dart';

class HamAvaScreens extends StatelessWidget {
  static const hamAvaPageName = 'hamAva-page';
  static const hamAvaPagePath = '/hamAva-page';
  const HamAvaScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final localization = S.of(context);
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
            Container(
              color: Theme.of(context).colorScheme.onPrimary,
              width: double.infinity,
              height: 80,
              child: Column(
                children: [
                  Text('هم آوا'),
                  Text('مزایای عضویت'),
                  Text('امتیاز سفر و سبک زندگی، لحضات به یاد ماندنی را با هم آوا داشته باشید')
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

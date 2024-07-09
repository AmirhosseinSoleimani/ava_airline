import 'package:ava_airline/src/shared/footer/footer_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../../../shared/resources/resources.dart';
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


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final locale = Localizations.localeOf(context).languageCode;
    return Scaffold(
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
            ),
            Space.h64,
            Container(
              color: Colors.red,
            ),
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}

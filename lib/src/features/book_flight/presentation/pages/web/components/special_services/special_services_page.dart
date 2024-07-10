import 'package:ava_airline/src/features/book_flight/presentation/pages/web/components/confirm/confirm_page.dart';
import '../../../../../../../../generated/l10n.dart';
import '../../../../../../../shared/footer/footer_widget.dart';
import '../../../../../../bottom_navigation_bar/bottom_navigation_bar.dart';
import '../flight_selection/widgets/stepper_widget.dart';

class SpecialServicesPage extends StatefulWidget {
  static const  specialServicesPageName = 'special-services-page';
  static const  specialServicesPagePath = '/special-services-page';
  const SpecialServicesPage({super.key});

  @override
  State<SpecialServicesPage> createState() => _SpecialServicesPageState();
}

class _SpecialServicesPageState extends State<SpecialServicesPage> {
  List<bool> specialServiceList = [false, false, false, false, false];
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final locale = Localizations.localeOf(context).languageCode;
    final localization = S.of(context);
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
                      title: localization.selectFlight, icon: IconManager.airplane),
                  StepperModel(title: localization.passengerInformation, icon: IconManager.people),
                  StepperModel(title: localization.specialServices, icon: Icons.room_service),
                  StepperModel(
                      title: localization.confirm_and_pay, icon: Icons.airplane_ticket),
                ], currentIndex: 3,),
              ),
            ),
            Space.h64,
            SizedBox(
              width: width * 0.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(localization.specialServices, style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: AppSize.s28), textAlign: TextAlign.start,),
                  Space.h12,
                  Text(localization.special_services_description, style: Theme.of(context).textTheme.bodyMedium),
                  Space.h16,
                  Container(
                    height:  400,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.onPrimary,
                        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s12))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(AppPadding.p16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Amirhossein Soleimani', style: Theme.of(context).textTheme.titleMedium,),
                          Space.h16,
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(child: Text(localization.service, style: Theme.of(context).textTheme.bodyMedium,)),
                                Expanded(child: Text(localization.flight_route, style: Theme.of(context).textTheme.bodyMedium,)),
                                const Expanded(child: SizedBox()),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: AppSize.s48,
                            color: Theme.of(context).colorScheme.surface,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(child: Text(localization.blind, style: Theme.of(context).textTheme.bodyMedium,)),
                                  Expanded(
                                    child: Checkbox(
                                        value: specialServiceList[0],
                                        onChanged: (value) {
                                          specialServiceList[0] =! specialServiceList[0];
                                          setState(() {});
                                        }),
                                  ),
                                  const Expanded(child: SizedBox())
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: AppSize.s48,
                            color: Theme.of(context).colorScheme.onSecondary,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(child: Text(localization.deaf, style: Theme.of(context).textTheme.bodyMedium,)),
                                  Expanded(
                                    child: Checkbox(
                                        value: specialServiceList[1],
                                        onChanged: (value) {
                                          specialServiceList[1] =! specialServiceList[1];
                                          setState(() {});
                                        }),
                                  ),
                                  const Expanded(child: SizedBox())
                                ],
                              ),
                            ),
                          ),
                          Container(
                          width: double.infinity,
                          height: AppSize.s48,
                          color: Theme.of(context).colorScheme.surface,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(child: Text(localization.wheelchair_full, style: Theme.of(context).textTheme.bodyMedium,)),
                                Expanded(
                                  child: Checkbox(
                                      value: specialServiceList[2],
                                      onChanged: (value) {
                                        specialServiceList[2] =! specialServiceList[2];
                                        setState(() {});
                                      }),
                                ),
                                const Expanded(child: SizedBox())
                              ],
                            ),
                          ),
                        ),
                          Container(
                            width: double.infinity,
                            height: AppSize.s48,
                            color: Theme.of(context).colorScheme.onSecondary,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(child: Text(localization.lift_instead_of_wheelchair, style: Theme.of(context).textTheme.bodyMedium,)),
                                  Expanded(
                                    child: Checkbox(
                                        value: specialServiceList[3],
                                        onChanged: (value) {
                                          specialServiceList[3] =! specialServiceList[3];
                                          setState(() {});
                                        }),
                                  ),
                                  const Expanded(child: SizedBox())
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: AppSize.s48,
                            color: Theme.of(context).colorScheme.surface,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(child: Text(localization.wheelchair_in_map, style: Theme.of(context).textTheme.bodyMedium,)),
                                  Expanded(
                                    child: Checkbox(
                                        value: specialServiceList[4],
                                        onChanged: (value) {
                                          specialServiceList[4] =! specialServiceList[4];
                                          setState(() {});
                                        }),
                                  ),
                                  const Expanded(child: SizedBox())
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Space.h16,
                  Align(
                    alignment: locale.contains('en') ? Alignment.topRight : Alignment.topLeft,
                    child: AvaElevatedButton(
                      onTap: () {
                        context.go(ConfirmPage.confirmPagePath);
                      },
                      title: localization.next,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
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

import '../../../../../../../../generated/l10n.dart';
import '../../../../../../../shared/footer/footer_widget.dart';
import '../../../../../../bottom_navigation_bar/bottom_navigation_bar.dart';
import '../flight_selection/widgets/stepper_widget.dart';

class ConfirmPage extends StatefulWidget {
  static const confirmPageName = 'confirm-page';
  static const confirmPagePath = '/confirm-page';

  const ConfirmPage({super.key});

  @override
  State<ConfirmPage> createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {
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
              child: (width > 1024)
                  ? NavbarComponent(
                      color: Theme.of(context).colorScheme.onSurface,
                    )
                  : Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(AppPadding.p16),
                        child: Row(
                          mainAxisAlignment: (locale == 'en')
                              ? MainAxisAlignment.start
                              : MainAxisAlignment.end,
                          children: [
                            if (locale == 'en')
                              InkWell(
                                onTap: () {
                                  scaffoldKey.currentState?.openDrawer();
                                },
                                child: Icon(
                                  IconManager.density,
                                  size: AppSize.s24,
                                  color:
                                      Theme.of(context).colorScheme.onSecondary,
                                ),
                              ),
                            SvgPicture.asset(
                              SvgManager.avaAirLineLogoSvg,
                              width: AppSize.s60,
                              height: AppSize.s60,
                            ),
                            Space.w16,
                            if (locale != 'en')
                              InkWell(
                                onTap: () {
                                  scaffoldKey.currentState?.openDrawer();
                                },
                                child: Icon(
                                  IconManager.density,
                                  size: AppSize.s24,
                                  color:
                                      Theme.of(context).colorScheme.onSecondary,
                                ),
                              ),
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
                child: StepperWidget(
                  stepperList: [
                    StepperModel(
                        title: localization.search, icon: Icons.fact_check_outlined),
                    StepperModel(
                        title: localization.selectFlight, icon: IconManager.airplane),
                    StepperModel(
                        title: localization.passengerInformation, icon: IconManager.people),
                    StepperModel(title: localization.specialServices, icon: Icons.room_service),
                    StepperModel(
                        title: localization.confirm_and_pay, icon: Icons.airplane_ticket),
                  ],
                  currentIndex: 4,
                ),
              ),
            ),
            Space.h64,
            Container(
              width: width * 0.6,
              height: 380,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onSecondary,
                  borderRadius:
                      const BorderRadius.all(Radius.circular(AppSize.s12))),
              child: Padding(
                padding: const EdgeInsets.all(AppPadding.p16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.airplane_ticket,
                          size: AppSize.s28,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        Space.w16,
                        Text(
                          localization.ticketInfo,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                    Space.h16,
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: AppSize.s1,
                            color: ColorLightThemeManager.grey),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  child: Container(
                                color: Theme.of(context).colorScheme.surface,
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(AppPadding.p8),
                                  child: Text(
                                    localization.origin,
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                )),
                              )),
                              VerticalDivider(
                                thickness: AppSize.s1,
                                width: AppSize.s1,
                                color: ColorLightThemeManager.grey,
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.all(AppPadding.p8),
                                    child: Center(
                                        child: Text(
                                      'تهران',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    )),
                                  ))
                            ],
                          ),
                          Divider(
                            thickness: AppSize.s2,
                            height: AppSize.s2,
                            color: ColorLightThemeManager.grey,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Container(
                                color: Theme.of(context).colorScheme.surface,
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(AppPadding.p8),
                                  child: Text(
                                    localization.destination,
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                )),
                              )),
                              VerticalDivider(
                                thickness: AppSize.s1,
                                width: AppSize.s1,
                                color: ColorLightThemeManager.grey,
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.all(AppPadding.p8),
                                    child: Center(
                                        child: Text(
                                      'مشهد',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    )),
                                  ))
                            ],
                          ),
                          Divider(
                            thickness: AppSize.s2,
                            height: AppSize.s2,
                            color: ColorLightThemeManager.grey,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Container(
                                    color: Theme.of(context).colorScheme.surface,
                                    child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(AppPadding.p8),
                                          child: Text(
                                            localization.airlineCompany,
                                            style:
                                            Theme.of(context).textTheme.bodyMedium,
                                          ),
                                        )),
                                  )),
                              VerticalDivider(
                                thickness: AppSize.s1,
                                width: AppSize.s1,
                                color: ColorLightThemeManager.grey,
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.all(AppPadding.p8),
                                    child: Center(
                                        child: Text(
                                          'آوا',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                        )),
                                  ))
                            ],
                          ),
                          Divider(
                            thickness: AppSize.s2,
                            height: AppSize.s2,
                            color: ColorLightThemeManager.grey,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Container(
                                    color: Theme.of(context).colorScheme.surface,
                                    child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(AppPadding.p8),
                                          child: Text(
                                            localization.flightDate,
                                            style:
                                            Theme.of(context).textTheme.bodyMedium,
                                          ),
                                        )),
                                  )),
                              VerticalDivider(
                                thickness: AppSize.s1,
                                width: AppSize.s1,
                                color: ColorLightThemeManager.grey,
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.all(AppPadding.p8),
                                    child: Center(
                                        child: Text(
                                          'یکشنبه 21 مرداد- 20:40',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                        )),
                                  ))
                            ],
                          ),
                          Divider(
                            thickness: AppSize.s2,
                            height: AppSize.s2,
                            color: ColorLightThemeManager.grey,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Container(
                                    color: Theme.of(context).colorScheme.surface,
                                    child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(AppPadding.p8),
                                          child: Text(
                                            localization.flightNumber,
                                            style:
                                            Theme.of(context).textTheme.bodyMedium,
                                          ),
                                        )),
                                  )),
                              VerticalDivider(
                                thickness: AppSize.s1,
                                width: AppSize.s1,
                                color: ColorLightThemeManager.grey,
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.all(AppPadding.p8),
                                    child: Center(
                                        child: Text(
                                          'w51037',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                        )),
                                  ))
                            ],
                          ),
                          Divider(
                            thickness: AppSize.s2,
                            height: AppSize.s2,
                            color: ColorLightThemeManager.grey,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Container(
                                    color: Theme.of(context).colorScheme.surface,
                                    child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(AppPadding.p8),
                                          child: Text(
                                            localization.flightClass,
                                            style:
                                            Theme.of(context).textTheme.bodyMedium,
                                          ),
                                        )),
                                  )),
                              VerticalDivider(
                                thickness: AppSize.s1,
                                width: AppSize.s1,
                                color: ColorLightThemeManager.grey,
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.all(AppPadding.p8),
                                    child: Center(
                                        child: Text(
                                          'اکونومی',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                        )),
                                  ))
                            ],
                          ),
                          Divider(
                            thickness: AppSize.s2,
                            height: AppSize.s2,
                            color: ColorLightThemeManager.grey,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Container(
                                    color: Theme.of(context).colorScheme.surface,
                                    child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(AppPadding.p8),
                                          child: Text(
                                            localization.allowedBaggage,
                                            style:
                                            Theme.of(context).textTheme.bodyMedium,
                                          ),
                                        )),
                                  )),
                              VerticalDivider(
                                thickness: AppSize.s1,
                                width: AppSize.s1,
                                color: ColorLightThemeManager.grey,
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.all(AppPadding.p8),
                                    child: Center(
                                        child: Text(
                                          '20 کیلوگرم',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                        )),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Space.h64,
            Container(
              width: width * 0.6,
              height: 180,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onSecondary,
                  borderRadius:
                  const BorderRadius.all(Radius.circular(AppSize.s12))),
              child: Padding(
                padding: const EdgeInsets.all(AppPadding.p16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.people,
                          size: AppSize.s28,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        Space.w16,
                        Text(
                          localization.passengerDetails,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                    Space.h16,
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: AppSize.s1,
                            color: ColorLightThemeManager.grey),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            color: Theme.of(context).colorScheme.surface,
                            child: Row(
                              children: [
                                Expanded(
                                    child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(AppPadding.p8),
                                          child: Text(
                                            localization.ageGroup,
                                            style:
                                            Theme.of(context).textTheme.bodyMedium,
                                          ),
                                        ))),
                                Expanded(
                                    child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(AppPadding.p8),
                                          child: Text(
                                            localization.name,
                                            style:
                                            Theme.of(context).textTheme.bodyMedium,
                                          ),
                                        ))),
                                Expanded(
                                    child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(AppPadding.p8),
                                          child: Text(
                                            localization.gender,
                                            style:
                                            Theme.of(context).textTheme.bodyMedium,
                                          ),
                                        ))),
                                Expanded(
                                    child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(AppPadding.p8),
                                          child: Text(
                                            localization.national_id,
                                            style:
                                            Theme.of(context).textTheme.bodyMedium,
                                          ),
                                        ))),
                                Expanded(
                                    child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(AppPadding.p8),
                                          child: Text(
                                            localization.birth_date,
                                            style:
                                            Theme.of(context).textTheme.bodyMedium,
                                          ),
                                        ))),
                                Expanded(
                                    child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(AppPadding.p8),
                                          child: Text(
                                            localization.nationality,
                                            style:
                                            Theme.of(context).textTheme.bodyMedium,
                                          ),
                                        ))),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: AppSize.s2,
                            height: AppSize.s2,
                            color: ColorLightThemeManager.grey,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(AppPadding.p8),
                                        child: Text(
                                          localization.adult,
                                          style:
                                          Theme.of(context).textTheme.bodyMedium,
                                        ),
                                      ))),
                              Expanded(
                                  child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(AppPadding.p8),
                                        child: Text(
                                          'Amirhossein Soleimani',
                                          style:
                                          Theme.of(context).textTheme.bodyMedium,
                                        ),
                                      ))),
                              Expanded(
                                  child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(AppPadding.p8),
                                        child: Text(
                                          'مرد',
                                          style:
                                          Theme.of(context).textTheme.bodyMedium,
                                        ),
                                      ))),
                              Expanded(
                                  child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(AppPadding.p8),
                                        child: Text(
                                          '0019954727',
                                          style:
                                          Theme.of(context).textTheme.bodyMedium,
                                        ),
                                      ))),
                              Expanded(
                                  child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(AppPadding.p8),
                                        child: Text(
                                          '1376/02/13',
                                          style:
                                          Theme.of(context).textTheme.bodyMedium,
                                        ),
                                      ))),
                              Expanded(
                                  child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(AppPadding.p8),
                                        child: Text(
                                          'ایران',
                                          style:
                                          Theme.of(context).textTheme.bodyMedium,
                                        ),
                                      ))),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Space.h64,
            Container(
              width: width * 0.6,
              height: 180,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onSecondary,
                  borderRadius:
                  const BorderRadius.all(Radius.circular(AppSize.s12))),
              child: Padding(
                padding: const EdgeInsets.all(AppPadding.p16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      localization.travelServices,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Space.h16,
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          color: Theme.of(context).colorScheme.surface,
                          child: Padding(
                            padding: const EdgeInsets.all(AppPadding.p16),
                            child: Row(
                              children: [
                                Text(localization.normalRefund)
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Space.h64,
            Container(
              width: width * 0.6,
              height: 180,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onSecondary,
                  borderRadius:
                  const BorderRadius.all(Radius.circular(AppSize.s12))),
              child: Padding(
                padding: const EdgeInsets.all(AppPadding.p16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      localization.discountCode,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Space.h8,
                    Container(
                      color: Theme.of(context).colorScheme.surface,
                      child: Padding(
                        padding: const EdgeInsets.all(AppPadding.p8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Text(
                                localization.enterDiscountCode,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: AvaTextFormField(
                                controller: TextEditingController(),
                                hintText: localization.discountCode,
                                borderColor: Theme.of(context).colorScheme.secondary,
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.all(AppPadding.p8),
                                  child: AvaElevatedButton(
                                    onTap: () {},
                                    title: localization.applyCode,
                                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Space.h64,
            Container(
              width: width * 0.6,
              height: 200,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onSecondary,
                  borderRadius:
                  const BorderRadius.all(Radius.circular(AppSize.s12))),
              child: Padding(
                padding: const EdgeInsets.all(AppPadding.p16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      localization.payment,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Space.h8,
                    Container(
                      color: Theme.of(context).colorScheme.surface,
                      child: Padding(
                        padding: const EdgeInsets.all(AppPadding.p16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Text(
                                localization.paymentInfo,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    localization.payable_amount,
                                    style: Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  Space.w12,
                                  Text(
                                    '13,267,000ریال',
                                    style: Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Space.h16,
                    AvaElevatedButton(
                      onTap: () {},
                      title: localization.pay,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
                    )
                  ],
                ),
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

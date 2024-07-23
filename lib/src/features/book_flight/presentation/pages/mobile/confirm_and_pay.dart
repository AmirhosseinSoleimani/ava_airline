import 'package:ava_airline/generated/l10n.dart';
import 'package:ava_airline/src/features/book_flight/presentation/pages/mobile/widgets/seat_screen.dart';
import 'package:flutter/material.dart';

import '../../../../bottom_navigation_bar/bottom_navigation_bar.dart';


class ConfirmAndPay extends StatefulWidget {
  const ConfirmAndPay({super.key});
  static const pageName = 'confirm-and-pay';
  static const pagePath = '/confirm-and-pay';

  @override
  State<ConfirmAndPay> createState() => _ConfirmAndPayState();
}

class _ConfirmAndPayState extends State<ConfirmAndPay> {
  @override
  Widget build(BuildContext context) {
    final localization = S.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        surfaceTintColor: Theme.of(context).colorScheme.surfaceTint,
        title: Text(localization.confirm_and_pay),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
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
                       borderRadius:  const BorderRadius.all(Radius.circular(AppSize.s12)),
                      border: Border.all(
                          width: 0.5,
                          color: ColorLightThemeManager.grey),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(AppPadding.p8),
                                      child: FittedBox(
                                        child: Text(
                                          localization.origin,
                                          style:
                                          Theme.of(context).textTheme.bodyMedium,
                                        ),
                                      ),
                                    ))),
                            VerticalDivider(
                              thickness: 0.5,
                              width: 0.5,
                              color: ColorLightThemeManager.grey,
                            ),
                            Expanded(
                                flex: 2,
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
                                        child: FittedBox(
                                          child: Text(
                                            localization.destination,
                                            style:
                                            Theme.of(context).textTheme.bodyMedium,
                                          ),
                                        ),
                                      )),
                                )),
                            VerticalDivider(
                              thickness: 0.5,
                              width: 0.5,
                              color: ColorLightThemeManager.grey,
                            ),
                            Expanded(
                                flex: 2,
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
                                        child: FittedBox(
                                          child: Text(
                                            localization.airlineCompany,
                                            style:
                                            Theme.of(context).textTheme.bodyMedium,
                                          ),
                                        ),
                                      )),
                                )),
                            VerticalDivider(
                              thickness: 0.5,
                              width: 0.5,
                              color: ColorLightThemeManager.grey,
                            ),
                            Expanded(
                                flex: 2,
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
                                        child: FittedBox(
                                          child: Text(
                                            localization.flightDate,
                                            style:
                                            Theme.of(context).textTheme.bodyMedium,
                                          ),
                                        ),
                                      )),
                                )),
                            VerticalDivider(
                              thickness:0.5,
                              width: 0.5,
                              color: ColorLightThemeManager.grey,
                            ),
                            Expanded(
                                flex: 2,
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
                                        child: FittedBox(
                                          child: Text(
                                            localization.flightNumber,
                                            style:
                                            Theme.of(context).textTheme.bodyMedium,
                                          ),
                                        ),
                                      )),
                                )),
                            VerticalDivider(
                              thickness:0.5,
                              width: 0.5,
                              color: ColorLightThemeManager.grey,
                            ),
                            Expanded(
                                flex: 2,
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
                                        child: FittedBox(
                                          child: Text(
                                            localization.flightClass,
                                            style:
                                            Theme.of(context).textTheme.bodyMedium,
                                          ),
                                        ),
                                      )),
                                )),
                            VerticalDivider(
                              thickness: 0.5,
                              width: 0.5,
                              color: ColorLightThemeManager.grey,
                            ),
                            Expanded(
                                flex: 2,
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
                                child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(AppPadding.p8),
                                      child: FittedBox(
                                        child: Text(
                                          localization.allowedBaggage,
                                          style:
                                          Theme.of(context).textTheme.bodyMedium,
                                        ),
                                      ),
                                    ))),
                            VerticalDivider(
                              thickness: 0.5,
                              width: 0.5,
                              color: ColorLightThemeManager.grey,
                            ),
                            Expanded(
                                flex: 2,
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

            Padding(
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
                        localization.passengerInfo,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                  Space.h16,
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:  const BorderRadius.all(Radius.circular(AppSize.s12)),
                      border: Border.all(
                          width: 0.5,
                          color: ColorLightThemeManager.grey),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(AppPadding.p8),
                                      child: FittedBox(
                                        child: Text(
                                          localization.ageGroup,
                                          style:
                                          Theme.of(context).textTheme.bodyMedium,
                                        ),
                                      ),
                                    ))),
                            VerticalDivider(
                              thickness: 0.5,
                              width: 0.5,
                              color: ColorLightThemeManager.grey,
                            ),
                            Expanded(
                                flex: 2,
                                child: Padding(
                                  padding:
                                  const EdgeInsets.all(AppPadding.p8),
                                  child: Center(
                                      child: Text(
                                        localization.adult,
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
                                        child: FittedBox(
                                          child: Text(
                                            localization.name,
                                            style:
                                            Theme.of(context).textTheme.bodyMedium,
                                          ),
                                        ),
                                      )),
                                )),
                            VerticalDivider(
                              thickness: 0.5,
                              width: 0.5,
                              color: ColorLightThemeManager.grey,
                            ),
                            Expanded(
                                flex: 2,
                                child: Padding(
                                  padding:
                                  const EdgeInsets.all(AppPadding.p8),
                                  child: Center(
                                      child: Text(
                                        'Soroush Masoum Beigi',
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
                                        child: FittedBox(
                                          child: Text(
                                            localization.gender,
                                            style:
                                            Theme.of(context).textTheme.bodyMedium,
                                          ),
                                        ),
                                      )),
                                )),
                            VerticalDivider(
                              thickness: 0.5,
                              width: 0.5,
                              color: ColorLightThemeManager.grey,
                            ),
                            Expanded(
                                flex: 2,
                                child: Padding(
                                  padding:
                                  const EdgeInsets.all(AppPadding.p8),
                                  child: Center(
                                      child: Text(
                                        localization.male,
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
                                        child: FittedBox(
                                          child: Text(
                                            localization.nationalId,
                                            style:
                                            Theme.of(context).textTheme.bodyMedium,
                                          ),
                                        ),
                                      )),
                                )),
                            VerticalDivider(
                              thickness:0.5,
                              width: 0.5,
                              color: ColorLightThemeManager.grey,
                            ),
                            Expanded(
                                flex: 2,
                                child: Padding(
                                  padding:
                                  const EdgeInsets.all(AppPadding.p8),
                                  child: Center(
                                      child: Text(
                                        '0150504321',
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
                                child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(AppPadding.p8),
                                      child: FittedBox(
                                        child: Text(
                                          localization.birth_date,
                                          style:
                                          Theme.of(context).textTheme.bodyMedium,
                                        ),
                                      ),
                                    ))),
                            VerticalDivider(
                              thickness:0.5,
                              width: 0.5,
                              color: ColorLightThemeManager.grey,
                            ),
                            Expanded(
                                flex: 2,
                                child: Padding(
                                  padding:
                                  const EdgeInsets.all(AppPadding.p8),
                                  child: Center(
                                      child: Text(
                                        '1381/12/07',
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
                                child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(AppPadding.p8),
                                      child: FittedBox(
                                        child: Text(
                                          localization.nationality,
                                          style:
                                          Theme.of(context).textTheme.bodyMedium,
                                        ),
                                      ),
                                    ))),
                            VerticalDivider(
                              thickness: 0.5,
                              width: 0.5,
                              color: ColorLightThemeManager.grey,
                            ),
                            Expanded(
                                flex: 2,
                                child: Padding(
                                  padding:
                                  const EdgeInsets.all(AppPadding.p8),
                                  child: Center(
                                      child: Text(
                                        localization.iran,
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
            const SizedBox(height: 20,),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                height: 45,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Theme.of(context).colorScheme.primary)),
                  child: Text(
                    localization.chooseSeat,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onPressed: () {
                 showModalBottomSheet(context: context, builder: (context) => const SeatScreen(),  isScrollControlled: true);
                  },
                ),
              ),
            ),
            const SizedBox(height: 8,),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                height: 45,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Theme.of(context).colorScheme.primary)),
                  child: Text(
                    localization.payment,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      context.pop();
                      context.pop();
                      context.pop();
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 100,),

          ],
        ),
      ),
    );
  }
}
